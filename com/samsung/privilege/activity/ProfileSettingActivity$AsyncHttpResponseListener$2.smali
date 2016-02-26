.class Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1084
    const/4 v0, 0x0

    .line 1086
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_3e

    move-result v2

    if-eqz v2, :cond_12

    .line 1087
    const/4 v0, 0x1

    .line 1092
    :cond_12
    :goto_12
    if-eqz v0, :cond_2e

    .line 1093
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$5(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/lang/String;)V

    .line 1098
    :cond_2e
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->this$1:Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$6(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1099
    return-void

    .line 1089
    :catch_3e
    move-exception v1

    .line 1090
    .local v1, "e2":Ljava/lang/Exception;
    const-string v2, "profile.setting"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method
