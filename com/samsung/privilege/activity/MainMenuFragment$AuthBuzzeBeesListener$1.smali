.class Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->val$response_text:Ljava/lang/String;

    .line 3034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 35

    .prologue
    .line 3037
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->val$response_code:I

    move/from16 v29, v0

    const/16 v30, 0xc8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4a1

    .line 3039
    :try_start_e
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3040
    .local v11, "jsonRoot":Lorg/json/JSONObject;
    const-string v29, "token"

    move-object/from16 v0, v29

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3041
    .local v27, "token":Ljava/lang/String;
    const-string v29, "version"

    move-object/from16 v0, v29

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3042
    .local v28, "version":Ljava/lang/String;
    const-string v29, "logon_message"

    move-object/from16 v0, v29

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3043
    .local v17, "logon_message":Ljava/lang/String;
    const-string v29, "logon_message_id"

    move-object/from16 v0, v29

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3045
    .local v18, "logon_message_id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v30, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v30 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v30, "locale"

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v30, "userId"

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/UserLogin;->SetUserId(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v30, "isPremiumUser"

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/UserLogin;->SetIsPremium(Landroid/content/Context;Z)Z

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 3055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->notifyDataSetChanged()V
    :try_end_e4
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e4} :catch_390

    .line 3058
    :try_start_e4
    const-string v29, "updated_points"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 3059
    .local v12, "jsonUpdatedPoints":Lorg/json/JSONObject;
    const-string v29, "points"

    move-object/from16 v0, v29

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v24

    .line 3060
    .local v24, "points":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_109} :catch_4f8
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_109} :catch_390

    .line 3066
    .end local v12    # "jsonUpdatedPoints":Lorg/json/JSONObject;
    .end local v24    # "points":J
    :goto_109
    :try_start_109
    const-string v29, "sponsor_pages"

    move-object/from16 v0, v29

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/samsung/privilege/AppSetting;->SPONSOR_PAGES:Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_113} :catch_373
    .catch Lorg/json/JSONException; {:try_start_109 .. :try_end_113} :catch_390

    .line 3072
    :goto_113
    :try_start_113
    const-string v29, "updated_points"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 3073
    .local v16, "json_updated_points":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v30, "points"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v29 .. v31}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_136} :catch_3a6
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_136} :catch_390

    .line 3077
    .end local v16    # "json_updated_points":Lorg/json/JSONObject;
    :goto_136
    :try_start_136
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$20()Ljava/lang/String;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "updated_points="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->gPrevLocal:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v30, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v30 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1ad

    .line 3082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    move/from16 v29, v0

    if-eqz v29, :cond_1ad

    .line 3083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 3084
    .local v4, "campaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->refreshPager()V

    .line 3088
    .end local v4    # "campaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/UserLogin;->GetIsAcceptTerm(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_1d5

    .line 3089
    new-instance v20, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v29, "term"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 3090
    .local v20, "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    sget-object v29, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3093
    .end local v20    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/UserLogin;->GetIsPlayingIntro(Landroid/content/Context;)Z

    move-result v29

    if-nez v29, :cond_210

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/UserLogin;->SetIsPlayingIntro(Landroid/content/Context;Z)Z

    .line 3096
    new-instance v20, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v29, "welcome"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 3097
    .restart local v20    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    sget-object v29, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_210
    .catch Lorg/json/JSONException; {:try_start_136 .. :try_end_210} :catch_390

    .line 3101
    .end local v20    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_210
    :try_start_210
    const-string v29, "buzzebees"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 3102
    .local v15, "json_buzzebees":Lorg/json/JSONObject;
    const-string v29, "points"

    move-object/from16 v0, v29

    invoke-static {v15, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v23

    .line 3104
    .local v23, "points_add":I
    if-lez v23, :cond_24b

    .line 3105
    const-string v26, "weeklytopup"

    .line 3106
    .local v26, "strFrom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v30, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v30 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v30

    move/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 3109
    .end local v26    # "strFrom":Ljava/lang/String;
    :cond_24b
    const-string v29, "badges"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 3110
    .local v14, "json_badges":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_254
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_257} :catch_3e5
    .catch Lorg/json/JSONException; {:try_start_210 .. :try_end_257} :catch_390

    move-result v29

    move/from16 v0, v29

    if-lt v8, v0, :cond_3bc

    .line 3122
    .end local v8    # "i":I
    .end local v14    # "json_badges":Lorg/json/JSONArray;
    .end local v15    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v23    # "points_add":I
    :goto_25c
    if-eqz v17, :cond_28a

    :try_start_25e
    const-string v29, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_28a

    .line 3123
    new-instance v20, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v29, "message"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 3124
    .restart local v20    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 3125
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 3126
    sget-object v29, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3129
    .end local v20    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_28a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    move/from16 v29, v0

    if-eqz v29, :cond_2b3

    .line 3130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 3131
    .restart local v4    # "campaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 3134
    .end local v4    # "campaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    :cond_2b3
    const/16 v29, 0x0

    sput-boolean v29, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z
    :try_end_2b7
    .catch Lorg/json/JSONException; {:try_start_25e .. :try_end_2b7} :catch_390

    .line 3164
    .end local v11    # "jsonRoot":Lorg/json/JSONObject;
    .end local v17    # "logon_message":Ljava/lang/String;
    .end local v18    # "logon_message_id":Ljava/lang/String;
    .end local v27    # "token":Ljava/lang/String;
    .end local v28    # "version":Ljava/lang/String;
    :goto_2b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->session:Lcom/facebook/Session;

    move-object/from16 v30, v0

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->updateViewForUser(Lcom/facebook/Session;)V
    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$21(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/Session;)V

    .line 3166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->GetProfileData()V
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$22(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    .line 3168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/UserLogin;->GetAutoCampaignID(Landroid/content/Context;)I

    move-result v5

    .line 3169
    .local v5, "campaign_id":I
    if-lez v5, :cond_372

    .line 3170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/UserLogin;->GetAutoCampaignMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 3171
    .local v21, "mode":Ljava/lang/String;
    if-eqz v21, :cond_470

    const-string v29, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_470

    .line 3172
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    const-string v30, "gift"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_402

    .line 3173
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-class v30, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3174
    .local v9, "intent":Landroid/content/Intent;
    const-string v29, "campaign_id"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 3190
    :goto_34c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/UserLogin;->SetAutoCampaignID(Landroid/content/Context;I)Z

    .line 3191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/UserLogin;->SetAutoCampaignMode(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3209
    .end local v5    # "campaign_id":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v21    # "mode":Ljava/lang/String;
    :cond_372
    :goto_372
    return-void

    .line 3067
    .restart local v11    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v17    # "logon_message":Ljava/lang/String;
    .restart local v18    # "logon_message_id":Ljava/lang/String;
    .restart local v27    # "token":Ljava/lang/String;
    .restart local v28    # "version":Ljava/lang/String;
    :catch_373
    move-exception v7

    .line 3068
    .local v7, "e":Ljava/lang/Exception;
    :try_start_374
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$20()Ljava/lang/String;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Can\'t get sponsor data:"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38e
    .catch Lorg/json/JSONException; {:try_start_374 .. :try_end_38e} :catch_390

    goto/16 :goto_113

    .line 3159
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "jsonRoot":Lorg/json/JSONObject;
    .end local v17    # "logon_message":Ljava/lang/String;
    .end local v18    # "logon_message_id":Ljava/lang/String;
    .end local v27    # "token":Ljava/lang/String;
    .end local v28    # "version":Ljava/lang/String;
    :catch_390
    move-exception v7

    .line 3160
    .local v7, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    const-string v30, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    .line 3161
    const/16 v29, 0x1

    sput-boolean v29, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z

    goto/16 :goto_2b7

    .line 3074
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v11    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v17    # "logon_message":Ljava/lang/String;
    .restart local v18    # "logon_message_id":Ljava/lang/String;
    .restart local v27    # "token":Ljava/lang/String;
    .restart local v28    # "version":Ljava/lang/String;
    :catch_3a6
    move-exception v7

    .line 3075
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-wide/16 v30, 0x0

    invoke-static/range {v29 .. v31}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_3ba
    .catch Lorg/json/JSONException; {:try_start_3a7 .. :try_end_3ba} :catch_390

    goto/16 :goto_136

    .line 3111
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i":I
    .restart local v14    # "json_badges":Lorg/json/JSONArray;
    .restart local v15    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v23    # "points_add":I
    :cond_3bc
    :try_start_3bc
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 3112
    .local v13, "json_badge":Lorg/json/JSONObject;
    new-instance v22, Lcom/samsung/privilege/bean/BadgeAlert;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lcom/samsung/privilege/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 3114
    .local v22, "objBadgeAlert":Lcom/samsung/privilege/bean/BadgeAlert;
    new-instance v20, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v29, "badge"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 3115
    .restart local v20    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    .line 3116
    sget-object v29, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3e1
    .catch Ljava/lang/Exception; {:try_start_3bc .. :try_end_3e1} :catch_3e5
    .catch Lorg/json/JSONException; {:try_start_3bc .. :try_end_3e1} :catch_390

    .line 3110
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_254

    .line 3118
    .end local v8    # "i":I
    .end local v13    # "json_badge":Lorg/json/JSONObject;
    .end local v14    # "json_badges":Lorg/json/JSONArray;
    .end local v15    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v20    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    .end local v22    # "objBadgeAlert":Lcom/samsung/privilege/bean/BadgeAlert;
    .end local v23    # "points_add":I
    :catch_3e5
    move-exception v7

    .line 3119
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_3e6
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Not found buzzebees data:"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_400
    .catch Lorg/json/JSONException; {:try_start_3e6 .. :try_end_400} :catch_390

    goto/16 :goto_25c

    .line 3176
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "jsonRoot":Lorg/json/JSONObject;
    .end local v17    # "logon_message":Ljava/lang/String;
    .end local v18    # "logon_message_id":Ljava/lang/String;
    .end local v27    # "token":Ljava/lang/String;
    .end local v28    # "version":Ljava/lang/String;
    .restart local v5    # "campaign_id":I
    .restart local v21    # "mode":Ljava/lang/String;
    :cond_402
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    const-string v30, "bzbs"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_43f

    .line 3177
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-class v30, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3178
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v29, "campaign_id"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_34c

    .line 3181
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_43f
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-class v30, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3182
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v29, "campaign_id"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_34c

    .line 3186
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_470
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    const-class v30, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3187
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v29, "campaign_id"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_34c

    .line 3194
    .end local v5    # "campaign_id":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v21    # "mode":Ljava/lang/String;
    :cond_4a1
    const-string v6, ""

    .line 3195
    .local v6, "code":Ljava/lang/String;
    const-string v19, ""

    .line 3197
    .local v19, "message":Ljava/lang/String;
    :try_start_4a5
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3198
    .restart local v11    # "jsonRoot":Lorg/json/JSONObject;
    const-string v29, "error"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 3199
    .local v10, "jsonError":Lorg/json/JSONObject;
    const-string v29, "message"

    move-object/from16 v0, v29

    invoke-static {v10, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3200
    const-string v29, "code"

    move-object/from16 v0, v29

    invoke-static {v10, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4c9
    .catch Ljava/lang/Exception; {:try_start_4a5 .. :try_end_4c9} :catch_4e5

    move-result-object v6

    .line 3205
    .end local v10    # "jsonError":Lorg/json/JSONObject;
    .end local v11    # "jsonRoot":Lorg/json/JSONObject;
    :goto_4ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    const/16 v29, 0x1

    sput-boolean v29, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z

    goto/16 :goto_372

    .line 3201
    :catch_4e5
    move-exception v7

    .line 3202
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v29, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v29 .. v29}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v29

    const v30, 0x7f0902b1

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_4ca

    .line 3061
    .end local v6    # "code":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v19    # "message":Ljava/lang/String;
    .restart local v11    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v17    # "logon_message":Ljava/lang/String;
    .restart local v18    # "logon_message_id":Ljava/lang/String;
    .restart local v27    # "token":Ljava/lang/String;
    .restart local v28    # "version":Ljava/lang/String;
    :catch_4f8
    move-exception v29

    goto/16 :goto_109
.end method
