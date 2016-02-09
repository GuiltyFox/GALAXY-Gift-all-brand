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

    .line 3019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 36

    .prologue
    .line 3022
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->val$response_code:I

    move/from16 v31, v0

    const/16 v32, 0xc8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_61c

    .line 3026
    :try_start_e
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3027
    .local v12, "jsonRoot":Lorg/json/JSONObject;
    const-string v31, "token"

    move-object/from16 v0, v31

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3028
    .local v29, "token":Ljava/lang/String;
    const-string v31, "version"

    move-object/from16 v0, v31

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3029
    .local v30, "version":Ljava/lang/String;
    const-string v31, "logon_message"

    move-object/from16 v0, v31

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3030
    .local v19, "logon_message":Ljava/lang/String;
    const-string v31, "logon_message_id"

    move-object/from16 v0, v31

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3032
    .local v20, "logon_message_id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v32, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "locale"

    move-object/from16 v0, v32

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "userId"

    move-object/from16 v0, v32

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetUserId(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "isPremiumUser"

    move-object/from16 v0, v32

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetIsPremium(Landroid/content/Context;Z)Z

    .line 3040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 3042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->notifyDataSetChanged()V
    :try_end_e4
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e4} :catch_3c7

    .line 3045
    :try_start_e4
    const-string v31, "updated_points"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 3046
    .local v13, "jsonUpdatedPoints":Lorg/json/JSONObject;
    const-string v31, "points"

    move-object/from16 v0, v31

    invoke-static {v13, v0}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v25

    .line 3047
    .local v25, "points":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_109} :catch_673
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_109} :catch_3c7

    .line 3053
    .end local v13    # "jsonUpdatedPoints":Lorg/json/JSONObject;
    .end local v25    # "points":J
    :goto_109
    :try_start_109
    const-string v31, "sponsor_pages"

    move-object/from16 v0, v31

    invoke-static {v12, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/samsung/privilege/AppSetting;->SPONSOR_PAGES:Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_113} :catch_3aa
    .catch Lorg/json/JSONException; {:try_start_109 .. :try_end_113} :catch_3c7

    .line 3059
    :goto_113
    :try_start_113
    const-string v31, "updated_points"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 3060
    .local v17, "json_updated_points":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "points"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v32

    invoke-static/range {v31 .. v33}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_136} :catch_3dd
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_136} :catch_3c7

    .line 3064
    .end local v17    # "json_updated_points":Lorg/json/JSONObject;
    :goto_136
    :try_start_136
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$20()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "updated_points="

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v33 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/samsung/privilege/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->gPrevLocal:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v32, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1a9

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    move/from16 v31, v0

    if-eqz v31, :cond_1a9

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 3094
    .local v4, "campaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->refreshPager()V

    .line 3098
    .end local v4    # "campaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/UserLogin;->GetIsAcceptTerm(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_1d1

    .line 3099
    new-instance v22, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v31, "term"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 3100
    .local v22, "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    sget-object v31, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3103
    .end local v22    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/UserLogin;->GetIsPlayingIntro(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_20c

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetIsPlayingIntro(Landroid/content/Context;Z)Z

    .line 3106
    new-instance v22, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v31, "welcome"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 3107
    .restart local v22    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    sget-object v31, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_20c
    .catch Lorg/json/JSONException; {:try_start_136 .. :try_end_20c} :catch_3c7

    .line 3111
    .end local v22    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_20c
    :try_start_20c
    const-string v31, "buzzebees"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 3112
    .local v16, "json_buzzebees":Lorg/json/JSONObject;
    const-string v31, "points"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v27

    .line 3114
    .local v27, "points_add":I
    if-lez v27, :cond_249

    .line 3115
    const-string v28, "weeklytopup"

    .line 3116
    .local v28, "strFrom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v32, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v32

    move/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 3119
    .end local v28    # "strFrom":Ljava/lang/String;
    :cond_249
    const-string v31, "badges"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 3120
    .local v15, "json_badges":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_254
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_257} :catch_41c
    .catch Lorg/json/JSONException; {:try_start_20c .. :try_end_257} :catch_3c7

    move-result v31

    move/from16 v0, v31

    if-lt v8, v0, :cond_3f3

    .line 3140
    .end local v8    # "i":I
    .end local v15    # "json_badges":Lorg/json/JSONArray;
    .end local v16    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v27    # "points_add":I
    :goto_25c
    if-eqz v19, :cond_28a

    :try_start_25e
    const-string v31, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_28a

    .line 3141
    new-instance v22, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v31, "message"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 3142
    .restart local v22    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 3143
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    .line 3144
    sget-object v31, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3147
    .end local v22    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_28a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    move/from16 v31, v0

    if-eqz v31, :cond_2b3

    .line 3148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 3149
    .restart local v4    # "campaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 3152
    .end local v4    # "campaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    :cond_2b3
    const/16 v31, 0x0

    sput-boolean v31, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z

    .line 3161
    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_439

    .line 3162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v32, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v32

    const v33, 0x7f0a001d

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v33 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v33

    const v34, 0x7f0a02a7

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v33

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogBuzzebeesError(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v31 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$21(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ee
    .catch Lorg/json/JSONException; {:try_start_25e .. :try_end_2ee} :catch_3c7

    .line 3233
    .end local v12    # "jsonRoot":Lorg/json/JSONObject;
    .end local v19    # "logon_message":Ljava/lang/String;
    .end local v20    # "logon_message_id":Ljava/lang/String;
    .end local v29    # "token":Ljava/lang/String;
    .end local v30    # "version":Ljava/lang/String;
    :goto_2ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->session:Lcom/facebook/Session;

    move-object/from16 v32, v0

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->updateViewForUser(Lcom/facebook/Session;)V
    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$24(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/Session;)V

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->GetProfileData()V
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$25(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    .line 3237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/UserLogin;->GetAutoCampaignID(Landroid/content/Context;)I

    move-result v5

    .line 3238
    .local v5, "campaign_id":I
    if-lez v5, :cond_3a9

    .line 3239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/UserLogin;->GetAutoCampaignMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 3240
    .local v23, "mode":Ljava/lang/String;
    if-eqz v23, :cond_5eb

    const-string v31, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5eb

    .line 3241
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "gift"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_57d

    .line 3242
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-class v32, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3243
    .local v9, "intent":Landroid/content/Intent;
    const-string v31, "campaign_id"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 3259
    :goto_383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetAutoCampaignID(Landroid/content/Context;I)Z

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetAutoCampaignMode(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3278
    .end local v5    # "campaign_id":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v23    # "mode":Ljava/lang/String;
    :cond_3a9
    :goto_3a9
    return-void

    .line 3054
    .restart local v12    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v19    # "logon_message":Ljava/lang/String;
    .restart local v20    # "logon_message_id":Ljava/lang/String;
    .restart local v29    # "token":Ljava/lang/String;
    .restart local v30    # "version":Ljava/lang/String;
    :catch_3aa
    move-exception v7

    .line 3055
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3ab
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$20()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Can\'t get sponsor data:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c5
    .catch Lorg/json/JSONException; {:try_start_3ab .. :try_end_3c5} :catch_3c7

    goto/16 :goto_113

    .line 3209
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "jsonRoot":Lorg/json/JSONObject;
    .end local v19    # "logon_message":Ljava/lang/String;
    .end local v20    # "logon_message_id":Ljava/lang/String;
    .end local v29    # "token":Ljava/lang/String;
    .end local v30    # "version":Ljava/lang/String;
    :catch_3c7
    move-exception v7

    .line 3210
    .local v7, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    const-string v32, "Authentication with BuzzeBees Fail...\r\n{Invalid data format}..."

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    .line 3211
    const/16 v31, 0x1

    sput-boolean v31, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z

    goto/16 :goto_2ee

    .line 3061
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v12    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v19    # "logon_message":Ljava/lang/String;
    .restart local v20    # "logon_message_id":Ljava/lang/String;
    .restart local v29    # "token":Ljava/lang/String;
    .restart local v30    # "version":Ljava/lang/String;
    :catch_3dd
    move-exception v7

    .line 3062
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-wide/16 v32, 0x0

    invoke-static/range {v31 .. v33}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_3f1
    .catch Lorg/json/JSONException; {:try_start_3de .. :try_end_3f1} :catch_3c7

    goto/16 :goto_136

    .line 3121
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i":I
    .restart local v15    # "json_badges":Lorg/json/JSONArray;
    .restart local v16    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v27    # "points_add":I
    :cond_3f3
    :try_start_3f3
    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 3122
    .local v14, "json_badge":Lorg/json/JSONObject;
    new-instance v24, Lcom/samsung/privilege/bean/BadgeAlert;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcom/samsung/privilege/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 3127
    .local v24, "objBadgeAlert":Lcom/samsung/privilege/bean/BadgeAlert;
    new-instance v22, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v31, "badge"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 3128
    .restart local v22    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    .line 3129
    sget-object v31, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_418
    .catch Ljava/lang/Exception; {:try_start_3f3 .. :try_end_418} :catch_41c
    .catch Lorg/json/JSONException; {:try_start_3f3 .. :try_end_418} :catch_3c7

    .line 3120
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_254

    .line 3136
    .end local v8    # "i":I
    .end local v14    # "json_badge":Lorg/json/JSONObject;
    .end local v15    # "json_badges":Lorg/json/JSONArray;
    .end local v16    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v22    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    .end local v24    # "objBadgeAlert":Lcom/samsung/privilege/bean/BadgeAlert;
    .end local v27    # "points_add":I
    :catch_41c
    move-exception v7

    .line 3137
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_41d
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Not found buzzebees data:"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25c

    .line 3164
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_439
    const-string v31, "version"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 3165
    .local v18, "json_version":Lorg/json/JSONObject;
    const-string v31, "menu_buzzebees_visible"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 3166
    .local v10, "isMenuBuzzebeesVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v0, v10}, Lcom/samsung/privilege/UserLogin;->SetMenuBuzzebeesVisible(Landroid/content/Context;Z)Z

    .line 3168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "allow_use"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetIsAllowUse(Landroid/content/Context;Z)Z

    .line 3169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "has_new_version"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetIsHasNewVersion(Landroid/content/Context;Z)Z

    .line 3170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "token_need_logout"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetIsTokenNeedLogout(Landroid/content/Context;Z)Z

    .line 3171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "is_show_shopping_basket_button_on_marketplace_buzzebees"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetIsShowShoppingBasket(Landroid/content/Context;Z)Z

    .line 3173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/UserLogin;->GetIsAllowUse(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_523

    .line 3178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v32, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v32

    const v33, 0x7f0a001d

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v33 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v33

    const v34, 0x7f0a02a9

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v33

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v31 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$22(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ee

    .line 3182
    :cond_523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/UserLogin;->GetIsHasNewVersion(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_568

    .line 3185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v32, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v32 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v32

    const v33, 0x7f0a001d

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v33, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v33 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v33

    const v34, 0x7f0a02aa

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v33

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v31 .. v33}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$23(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ee

    .line 3193
    :cond_568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-string v32, "1"

    invoke-static/range {v31 .. v32}, Lcom/samsung/privilege/UserLogin;->SetModeLogin(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_57b
    .catch Lorg/json/JSONException; {:try_start_41d .. :try_end_57b} :catch_3c7

    goto/16 :goto_2ee

    .line 3245
    .end local v10    # "isMenuBuzzebeesVisible":Z
    .end local v12    # "jsonRoot":Lorg/json/JSONObject;
    .end local v18    # "json_version":Lorg/json/JSONObject;
    .end local v19    # "logon_message":Ljava/lang/String;
    .end local v20    # "logon_message_id":Ljava/lang/String;
    .end local v29    # "token":Ljava/lang/String;
    .end local v30    # "version":Ljava/lang/String;
    .restart local v5    # "campaign_id":I
    .restart local v23    # "mode":Ljava/lang/String;
    :cond_57d
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "bzbs"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5ba

    .line 3246
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-class v32, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3247
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v31, "campaign_id"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_383

    .line 3250
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_5ba
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-class v32, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3251
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v31, "campaign_id"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_383

    .line 3255
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_5eb
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    const-class v32, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3256
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v31, "campaign_id"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_383

    .line 3263
    .end local v5    # "campaign_id":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v23    # "mode":Ljava/lang/String;
    :cond_61c
    const-string v6, ""

    .line 3264
    .local v6, "code":Ljava/lang/String;
    const-string v21, ""

    .line 3266
    .local v21, "message":Ljava/lang/String;
    :try_start_620
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3267
    .restart local v12    # "jsonRoot":Lorg/json/JSONObject;
    const-string v31, "error"

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 3268
    .local v11, "jsonError":Lorg/json/JSONObject;
    const-string v31, "message"

    move-object/from16 v0, v31

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3269
    const-string v31, "code"

    move-object/from16 v0, v31

    invoke-static {v11, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_644
    .catch Ljava/lang/Exception; {:try_start_620 .. :try_end_644} :catch_660

    move-result-object v6

    .line 3274
    .end local v11    # "jsonError":Lorg/json/JSONObject;
    .end local v12    # "jsonRoot":Lorg/json/JSONObject;
    :goto_645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 3276
    const/16 v31, 0x1

    sput-boolean v31, Lcom/samsung/privilege/AppSetting;->IS_SERVER_BUZZEBEES_DOWN:Z

    goto/16 :goto_3a9

    .line 3270
    :catch_660
    move-exception v7

    .line 3271
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    move-object/from16 v31, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v31 .. v31}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v31

    const v32, 0x7f0a02b1

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_645

    .line 3048
    .end local v6    # "code":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v21    # "message":Ljava/lang/String;
    .restart local v12    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v19    # "logon_message":Ljava/lang/String;
    .restart local v20    # "logon_message_id":Ljava/lang/String;
    .restart local v29    # "token":Ljava/lang/String;
    .restart local v30    # "version":Ljava/lang/String;
    :catch_673
    move-exception v31

    goto/16 :goto_109
.end method
