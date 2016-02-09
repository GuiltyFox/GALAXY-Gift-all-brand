.class Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 994
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 996
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Locale"

    invoke-static {v3, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11d

    .line 998
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Token"

    invoke-static {v3, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_15e

    .line 1001
    const-wide/16 v4, 0x3e8

    :try_start_36
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_1aa

    .line 1006
    :goto_39
    :try_start_39
    const-string v4, "profile.setting"

    const-string v5, "set new locale"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v4, "profile.setting"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "locale "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Locale"

    invoke-static {v3, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Locale"

    invoke-static {v3, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1009
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 1011
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$7(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1012
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$8(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetLastName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1013
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvSex:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$9(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetGender(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1015
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v5

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$10(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1017
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    const v5, 0x7f03010d

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->setContentView(I)V

    .line 1018
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->initialLayout()V
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$11(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    .line 1019
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfilePicture()V
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$12(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    .line 1020
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfileData()V
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$13(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    .line 1024
    :cond_11d
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v5

    const v6, 0x7f0a00e3

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$5(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V

    .line 1026
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_147} :catch_15e

    .line 1042
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    :cond_147
    :goto_147
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$6(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1043
    const-string v4, "profile.setting"

    const-string v5, "(AsyncHttpResponseHandler):gPbLoadingProfile.setVisibility(View.GONE);"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    return-void

    .line 1027
    :catch_15e
    move-exception v1

    .line 1029
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1031
    .local v0, "blnIsAdmin":Z
    :try_start_160
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_16d} :catch_190

    move-result v4

    if-eqz v4, :cond_171

    .line 1032
    const/4 v0, 0x1

    .line 1037
    :cond_171
    :goto_171
    if-eqz v0, :cond_147

    .line 1038
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$5(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V

    goto :goto_147

    .line 1034
    :catch_190
    move-exception v2

    .line 1035
    .local v2, "e2":Ljava/lang/Exception;
    const-string v4, "profile.setting"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_171

    .line 1002
    .end local v0    # "blnIsAdmin":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    :catch_1aa
    move-exception v4

    goto/16 :goto_39
.end method
