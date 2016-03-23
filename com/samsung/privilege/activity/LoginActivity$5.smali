.class Lcom/samsung/privilege/activity/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/LoginActivity;->processJsonAuth(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/LoginActivity;

.field final synthetic val$mode_login:Ljava/lang/String;

.field final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/LoginActivity;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->val$response_text:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/activity/LoginActivity$5;->val$mode_login:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 430
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->val$response_text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 431
    .local v7, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v23, "token"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 432
    .local v20, "token":Ljava/lang/String;
    const-string/jumbo v23, "version"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 433
    .local v22, "version":Ljava/lang/String;
    const-string/jumbo v23, "logon_message_id"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 434
    .local v16, "logon_message_id":Ljava/lang/String;
    const-string/jumbo v23, "logon_message"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 436
    .local v15, "logon_message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "locale"

    move-object/from16 v0, v24

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "userId"

    move-object/from16 v0, v24

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetUserId(Landroid/content/Context;Ljava/lang/String;)Z

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "isPremiumUser"

    move-object/from16 v0, v24

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetIsPremium(Landroid/content/Context;Z)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a3} :catch_2a8

    .line 445
    :try_start_a3
    const-string/jumbo v23, "detail"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 446
    .local v11, "json_detail":Lorg/json/JSONObject;
    if-eqz v11, :cond_2b6

    .line 447
    const-string/jumbo v23, "ewallet_token"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 448
    .local v21, "token_wallet":Ljava/lang/String;
    if-eqz v21, :cond_26d

    const-string/jumbo v23, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_26d

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->SetTokenWallet(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_d7} :catch_28a

    .line 460
    .end local v11    # "json_detail":Lorg/json/JSONObject;
    .end local v21    # "token_wallet":Ljava/lang/String;
    :goto_d7
    :try_start_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "768830479847872"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_fe

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "1108"

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 469
    :cond_fe
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_105} :catch_2a8

    .line 472
    :try_start_105
    const-string/jumbo v23, "sponsor_pages"

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lcom/bzbs/data/AppSetting;->SPONSOR_PAGES:Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_110} :catch_2d3

    .line 478
    :goto_110
    :try_start_110
    const-string/jumbo v23, "updated_points"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 479
    .local v12, "json_updated_points":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "points"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v23 .. v25}, Lcom/bzbs/data/UserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_12f} :catch_2fb

    .line 483
    .end local v12    # "json_updated_points":Lorg/json/JSONObject;
    :goto_12f
    :try_start_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->access$100(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "updated_points="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/bzbs/data/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_162} :catch_2a8

    .line 486
    :try_start_162
    const-string/jumbo v23, "user_rank"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 487
    .local v13, "json_user_rank":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "rank"

    move-object/from16 v0, v24

    invoke-static {v13, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetRank(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_181} :catch_30d

    .line 492
    .end local v13    # "json_user_rank":Lorg/json/JSONObject;
    :goto_181
    :try_start_181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/bzbs/data/UserLogin;->GetIsAcceptTerm(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1ae

    .line 493
    new-instance v17, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v23, "term"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 494
    .local v17, "messagePopup":Lcom/bzbs/bean/MessagePopup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->AppendQueueMessagePopup(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V

    .line 497
    .end local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/bzbs/data/UserLogin;->GetIsPlayingIntro(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_1ea

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetIsPlayingIntro(Landroid/content/Context;Z)Z

    .line 500
    new-instance v17, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v23, "welcome"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 501
    .restart local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->AppendQueueMessagePopup(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1ea} :catch_2a8

    .line 505
    .end local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_1ea
    :try_start_1ea
    const-string/jumbo v23, "buzzebees"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 507
    .local v10, "json_buzzebees":Lorg/json/JSONObject;
    const-string/jumbo v23, "points"

    move-object/from16 v0, v23

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v19

    .line 509
    .local v19, "points_add":I
    if-lez v19, :cond_22a

    .line 510
    new-instance v17, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v23, "point"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 511
    .restart local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    const-string/jumbo v23, "weeklytopup"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    .line 512
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/bzbs/bean/MessagePopup;->point_number:I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->AppendQueueMessagePopup(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V

    .line 517
    .end local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_22a
    const-string/jumbo v23, "badges"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 518
    .local v9, "json_badges":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_234
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v5, v0, :cond_35b

    .line 519
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 520
    .local v8, "json_badge":Lorg/json/JSONObject;
    new-instance v18, Lcom/bzbs/bean/BadgeAlert;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lcom/bzbs/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 522
    .local v18, "objBadgeAlert":Lcom/bzbs/bean/BadgeAlert;
    new-instance v17, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v23, "badge"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 523
    .restart local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->AppendQueueMessagePopup(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V
    :try_end_26a
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_26a} :catch_335

    .line 518
    add-int/lit8 v5, v5, 0x1

    goto :goto_234

    .line 451
    .end local v5    # "i":I
    .end local v8    # "json_badge":Lorg/json/JSONObject;
    .end local v9    # "json_badges":Lorg/json/JSONArray;
    .end local v10    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    .end local v18    # "objBadgeAlert":Lcom/bzbs/bean/BadgeAlert;
    .end local v19    # "points_add":I
    .restart local v11    # "json_detail":Lorg/json/JSONObject;
    .restart local v21    # "token_wallet":Ljava/lang/String;
    :cond_26d
    :try_start_26d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetTokenWallet(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_288} :catch_28a

    goto/16 :goto_d7

    .line 456
    .end local v11    # "json_detail":Lorg/json/JSONObject;
    .end local v21    # "token_wallet":Ljava/lang/String;
    :catch_28a
    move-exception v4

    .line 457
    .local v4, "e":Ljava/lang/Exception;
    :try_start_28b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetTokenWallet(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_2a6} :catch_2a8

    goto/16 :goto_d7

    .line 557
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "jsonRoot":Lorg/json/JSONObject;
    .end local v15    # "logon_message":Ljava/lang/String;
    .end local v16    # "logon_message_id":Ljava/lang/String;
    .end local v20    # "token":Ljava/lang/String;
    .end local v22    # "version":Ljava/lang/String;
    :catch_2a8
    move-exception v4

    .line 558
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    # invokes: Lcom/samsung/privilege/activity/LoginActivity;->showToast(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/samsung/privilege/activity/LoginActivity;->access$000(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    .line 560
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2b5
    return-void

    .line 454
    .restart local v7    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v11    # "json_detail":Lorg/json/JSONObject;
    .restart local v15    # "logon_message":Ljava/lang/String;
    .restart local v16    # "logon_message_id":Ljava/lang/String;
    .restart local v20    # "token":Ljava/lang/String;
    .restart local v22    # "version":Ljava/lang/String;
    :cond_2b6
    :try_start_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetTokenWallet(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2d1} :catch_28a

    goto/16 :goto_d7

    .line 473
    .end local v11    # "json_detail":Lorg/json/JSONObject;
    :catch_2d3
    move-exception v4

    .line 474
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->access$100(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Can\'t get sponsor data:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_110

    .line 480
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2fb
    move-exception v4

    .line 481
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-wide/16 v24, 0x0

    invoke-static/range {v23 .. v25}, Lcom/bzbs/data/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    goto/16 :goto_12f

    .line 488
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_30d
    move-exception v4

    .line 489
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->access$100(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Can\'t get user_rank data:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_181

    .line 528
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_335
    move-exception v4

    .line 529
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->access$100(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Not found buzzebees data:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_35b
    const-string/jumbo v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3b6

    .line 546
    :goto_364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->val$mode_login:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetModeLogin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 548
    if-eqz v15, :cond_3ab

    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3ab

    .line 549
    new-instance v17, Lcom/bzbs/bean/MessagePopup;

    const-string/jumbo v23, "message"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/bzbs/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 550
    .restart local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 551
    move-object/from16 v0, v17

    iput-object v15, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->AppendQueueMessagePopup(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V

    .line 556
    .end local v17    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_3ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    # invokes: Lcom/samsung/privilege/activity/LoginActivity;->GetProfileData()V
    invoke-static/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->access$400(Lcom/samsung/privilege/activity/LoginActivity;)V

    goto/16 :goto_2b5

    .line 535
    :cond_3b6
    const-string/jumbo v23, "version"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 536
    .local v14, "json_version":Lorg/json/JSONObject;
    const-string/jumbo v23, "menu_buzzebees_visible"

    move-object/from16 v0, v23

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 537
    .local v6, "isMenuBuzzebeesVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/bzbs/data/UserLogin;->SetMenuBuzzebeesVisible(Landroid/content/Context;Z)Z

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "allow_use"

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetIsAllowUse(Landroid/content/Context;Z)Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "has_new_version"

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetIsHasNewVersion(Landroid/content/Context;Z)Z

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "token_need_logout"

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetIsTokenNeedLogout(Landroid/content/Context;Z)Z

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/LoginActivity$5;->this$0:Lcom/samsung/privilege/activity/LoginActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string/jumbo v24, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/bzbs/data/UserLogin;->SetIsShowShoppingBasket(Landroid/content/Context;Z)Z
    :try_end_443
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_443} :catch_2a8

    goto/16 :goto_364
.end method
