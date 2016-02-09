.class Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    iput p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 488
    iget v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_96

    .line 490
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v3, "Address"

    invoke-static {v1, v3}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "strAddress":Ljava/lang/String;
    if-eqz v2, :cond_2a

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 493
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z

    .line 496
    :cond_2a
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ShippingFirstName"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetFirstName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 497
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ShippingLastName"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetLastName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 498
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Gender"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetGender(Landroid/content/Context;Ljava/lang/String;)Z

    .line 499
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Address"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetAddress(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_76} :catch_91

    .line 504
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "strAddress":Ljava/lang/String;
    :goto_76
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->ProcessJsonProfileAndGenUI(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$4(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V

    .line 509
    :goto_81
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$6(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 510
    return-void

    .line 500
    :catch_91
    move-exception v0

    .line 501
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_76

    .line 506
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_96
    iget-object v3, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v3

    const-string v4, "Can not load profile data."

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$5(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V

    goto :goto_81
.end method
