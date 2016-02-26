.class Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    iput p2, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->val$response_text:Ljava/lang/String;

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 1005
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->val$response_code:I

    move/from16 v25, v0

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_40e

    .line 1009
    :try_start_e
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v9, "jsonRoot":Lorg/json/JSONObject;
    const-string v25, "token"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1011
    .local v23, "token":Ljava/lang/String;
    const-string v25, "version"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1012
    .local v24, "version":Ljava/lang/String;
    const-string v25, "logon_message_id"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1013
    .local v17, "logon_message_id":Ljava/lang/String;
    const-string v25, "logon_message"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1015
    .local v16, "logon_message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v26, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v26 .. v26}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "locale"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "userId"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetUserId(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "isPremiumUser"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetIsPremium(Landroid/content/Context;Z)Z

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "768830479847872"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_ef

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "1108"

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1032
    :cond_ef
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_f6} :catch_353

    .line 1035
    :try_start_f6
    const-string v25, "sponsor_pages"

    move-object/from16 v0, v25

    invoke-static {v9, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/samsung/privilege/AppSetting;->SPONSOR_PAGES:Ljava/lang/String;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_100} :catch_32c
    .catch Lorg/json/JSONException; {:try_start_f6 .. :try_end_100} :catch_353

    .line 1041
    :goto_100
    :try_start_100
    const-string v25, "updated_points"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 1042
    .local v13, "json_updated_points":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "points"

    move-object/from16 v0, v26

    invoke-static {v13, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_121} :catch_368
    .catch Lorg/json/JSONException; {:try_start_100 .. :try_end_121} :catch_353

    .line 1046
    .end local v13    # "json_updated_points":Lorg/json/JSONObject;
    :goto_121
    :try_start_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "updated_points="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v27, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/privilege/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_157
    .catch Lorg/json/JSONException; {:try_start_121 .. :try_end_157} :catch_353

    .line 1049
    :try_start_157
    const-string v25, "user_rank"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 1050
    .local v14, "json_user_rank":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "rank"

    move-object/from16 v0, v26

    invoke-static {v14, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetRank(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_178} :catch_37e
    .catch Lorg/json/JSONException; {:try_start_157 .. :try_end_178} :catch_353

    .line 1055
    .end local v14    # "json_user_rank":Lorg/json/JSONObject;
    :goto_178
    :try_start_178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/UserLogin;->GetIsAcceptTerm(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_1a0

    .line 1056
    new-instance v19, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v25, "term"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1057
    .local v19, "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    sget-object v25, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1060
    .end local v19    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/UserLogin;->GetIsPlayingIntro(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_1db

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetIsPlayingIntro(Landroid/content/Context;Z)Z

    .line 1063
    new-instance v19, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v25, "welcome"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1064
    .restart local v19    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    sget-object v25, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1db
    .catch Lorg/json/JSONException; {:try_start_178 .. :try_end_1db} :catch_353

    .line 1068
    .end local v19    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_1db
    :try_start_1db
    const-string v25, "buzzebees"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 1070
    .local v12, "json_buzzebees":Lorg/json/JSONObject;
    const-string v25, "points"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v21

    .line 1072
    .local v21, "points_add":I
    if-lez v21, :cond_212

    .line 1073
    const-string v22, "weeklytopup"

    .line 1074
    .local v22, "strFrom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    # getter for: Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->access$5(Lcom/samsung/privilege/MainActivity;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v26, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v26 .. v26}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v26

    move/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1077
    .end local v22    # "strFrom":Ljava/lang/String;
    :cond_212
    const-string v25, "badges"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1078
    .local v11, "json_badges":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21b
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_21e} :catch_3e7
    .catch Lorg/json/JSONException; {:try_start_1db .. :try_end_21e} :catch_353

    move-result v25

    move/from16 v0, v25

    if-lt v6, v0, :cond_3a5

    .line 1093
    .end local v6    # "i":I
    .end local v11    # "json_badges":Lorg/json/JSONArray;
    .end local v12    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v21    # "points_add":I
    :goto_223
    const/16 v25, 0x0

    :try_start_225
    sput-boolean v25, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z

    .line 1095
    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2ca

    .line 1098
    const-string v25, "version"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 1099
    .local v15, "json_version":Lorg/json/JSONObject;
    const-string v25, "menu_buzzebees_visible"

    move-object/from16 v0, v25

    invoke-static {v15, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1100
    .local v7, "isMenuBuzzebeesVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v7}, Lcom/samsung/privilege/UserLogin;->SetMenuBuzzebeesVisible(Landroid/content/Context;Z)Z

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "allow_use"

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetIsAllowUse(Landroid/content/Context;Z)Z

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "has_new_version"

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetIsHasNewVersion(Landroid/content/Context;Z)Z

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "token_need_logout"

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetIsTokenNeedLogout(Landroid/content/Context;Z)Z

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetIsShowShoppingBasket(Landroid/content/Context;Z)Z

    .line 1109
    .end local v7    # "isMenuBuzzebeesVisible":Z
    .end local v15    # "json_version":Lorg/json/JSONObject;
    :cond_2ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "2"

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetModeLogin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/UserLogin;->SetIsFacebookUser(Landroid/content/Context;Z)Z

    .line 1112
    if-eqz v16, :cond_31e

    const-string v25, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_31e

    .line 1113
    new-instance v19, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v25, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1114
    .restart local v19    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 1115
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 1116
    sget-object v25, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1119
    .end local v19    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_31e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    # invokes: Lcom/samsung/privilege/MainActivity;->GetProfileData()V
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->access$7(Lcom/samsung/privilege/MainActivity;)V

    .line 1140
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    .end local v16    # "logon_message":Ljava/lang/String;
    .end local v17    # "logon_message_id":Ljava/lang/String;
    .end local v23    # "token":Ljava/lang/String;
    .end local v24    # "version":Ljava/lang/String;
    :goto_32b
    return-void

    .line 1036
    .restart local v9    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v16    # "logon_message":Ljava/lang/String;
    .restart local v17    # "logon_message_id":Ljava/lang/String;
    .restart local v23    # "token":Ljava/lang/String;
    .restart local v24    # "version":Ljava/lang/String;
    :catch_32c
    move-exception v5

    .line 1037
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Can\'t get sponsor data:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_351
    .catch Lorg/json/JSONException; {:try_start_225 .. :try_end_351} :catch_353

    goto/16 :goto_100

    .line 1120
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    .end local v16    # "logon_message":Ljava/lang/String;
    .end local v17    # "logon_message_id":Ljava/lang/String;
    .end local v23    # "token":Ljava/lang/String;
    .end local v24    # "version":Ljava/lang/String;
    :catch_353
    move-exception v5

    .line 1121
    .local v5, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    const-string v26, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    # invokes: Lcom/samsung/privilege/MainActivity;->showToast(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/MainActivity;->access$4(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V

    .line 1122
    const/16 v25, 0x1

    sput-boolean v25, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z

    goto :goto_32b

    .line 1043
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v9    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v16    # "logon_message":Ljava/lang/String;
    .restart local v17    # "logon_message_id":Ljava/lang/String;
    .restart local v23    # "token":Ljava/lang/String;
    .restart local v24    # "version":Ljava/lang/String;
    :catch_368
    move-exception v5

    .line 1044
    .local v5, "e":Ljava/lang/Exception;
    :try_start_369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-wide/16 v26, 0x0

    invoke-static/range {v25 .. v27}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    goto/16 :goto_121

    .line 1051
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_37e
    move-exception v5

    .line 1052
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Can\'t get user_rank data:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a3
    .catch Lorg/json/JSONException; {:try_start_369 .. :try_end_3a3} :catch_353

    goto/16 :goto_178

    .line 1079
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "i":I
    .restart local v11    # "json_badges":Lorg/json/JSONArray;
    .restart local v12    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v21    # "points_add":I
    :cond_3a5
    :try_start_3a5
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1080
    .local v10, "json_badge":Lorg/json/JSONObject;
    new-instance v20, Lcom/samsung/privilege/bean/BadgeAlert;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Lcom/samsung/privilege/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 1083
    .local v20, "objBadgeAlert":Lcom/samsung/privilege/bean/BadgeAlert;
    new-instance v19, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v25, "badge"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1084
    .restart local v19    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/privilege/bean/BadgeAlert;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/MainActivity;->access$6(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V

    .line 1087
    sget-object v25, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3e3
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_3e3} :catch_3e7
    .catch Lorg/json/JSONException; {:try_start_3a5 .. :try_end_3e3} :catch_353

    .line 1078
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_21b

    .line 1089
    .end local v6    # "i":I
    .end local v10    # "json_badge":Lorg/json/JSONObject;
    .end local v11    # "json_badges":Lorg/json/JSONArray;
    .end local v12    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v19    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    .end local v20    # "objBadgeAlert":Lcom/samsung/privilege/bean/BadgeAlert;
    .end local v21    # "points_add":I
    :catch_3e7
    move-exception v5

    .line 1090
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Not found buzzebees data:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40c
    .catch Lorg/json/JSONException; {:try_start_3e8 .. :try_end_40c} :catch_353

    goto/16 :goto_223

    .line 1125
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    .end local v16    # "logon_message":Ljava/lang/String;
    .end local v17    # "logon_message_id":Ljava/lang/String;
    .end local v23    # "token":Ljava/lang/String;
    .end local v24    # "version":Ljava/lang/String;
    :cond_40e
    const-string v4, ""

    .line 1126
    .local v4, "code":Ljava/lang/String;
    const-string v18, ""

    .line 1128
    .local v18, "message":Ljava/lang/String;
    :try_start_412
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1129
    .restart local v9    # "jsonRoot":Lorg/json/JSONObject;
    const-string v25, "error"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1130
    .local v8, "jsonError":Lorg/json/JSONObject;
    const-string v25, "message"

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1131
    const-string v25, "code"

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_436
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_436} :catch_44e

    move-result-object v4

    .line 1136
    .end local v8    # "jsonError":Lorg/json/JSONObject;
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    :goto_437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1138
    const/16 v25, 0x1

    sput-boolean v25, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z

    goto/16 :goto_32b

    .line 1132
    :catch_44e
    move-exception v5

    .line 1133
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v25, v0

    # getter for: Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/MainActivity;
    invoke-static/range {v25 .. v25}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;)Lcom/samsung/privilege/MainActivity;

    move-result-object v25

    const v26, 0x7f0902b1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/privilege/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_437
.end method
