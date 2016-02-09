.class Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1098
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Token"

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/LibUserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_118

    .line 1107
    const-wide/16 v2, 0x3e8

    :try_start_1c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_136

    .line 1112
    :goto_1f
    :try_start_1f
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$3(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "set new locale"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$3(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "locale "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Locale"

    invoke-static {v1, v4}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Locale"

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/LibUserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1115
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 1117
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvFirstName:Landroid/widget/EditText;
    invoke-static {v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$8(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/LibUserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1118
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvLastName:Landroid/widget/EditText;
    invoke-static {v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$9(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/LibUserLogin;->SetLastName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1119
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gTvAddress:Landroid/widget/EditText;
    invoke-static {v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$10(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/LibUserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1121
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$layout;->bz_profile_setting:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->setContentView(I)V

    .line 1122
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/activity/ProfileSettingActivity;->initialLayout()V
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$11(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V

    .line 1123
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/activity/ProfileSettingActivity;->getProfilePicture()V
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$12(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V

    .line 1124
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/activity/ProfileSettingActivity;->getProfileData()V
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$13(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V

    .line 1126
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$string;->profile_setting_label_save_completed:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$6(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_108} :catch_118

    .line 1131
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    :goto_108
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$7(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1132
    return-void

    .line 1127
    :catch_118
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$6(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V

    goto :goto_108

    .line 1108
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    :catch_136
    move-exception v2

    goto/16 :goto_1f
.end method
