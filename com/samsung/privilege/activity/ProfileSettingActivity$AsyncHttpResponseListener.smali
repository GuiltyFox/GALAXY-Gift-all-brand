.class public Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ProfileSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncHttpResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 2

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 1081
    const-string v0, "profile.setting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$3(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1019
    const-string v0, "profile.setting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(AsyncHttpResponseHandler):response"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$3(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    # invokes: Lcom/samsung/privilege/activity/ProfileSettingActivity;->getProfileData()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$13(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V

    .line 1077
    return-void
.end method
