.class public Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ProfileSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncHttpResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V
    .registers 2

    .prologue
    .line 1090
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;
    .registers 2

    .prologue
    .line 1090
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 1139
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$3(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$4(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;

    invoke-direct {v1, p0, p2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1147
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1094
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$3(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$4(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$1;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    return-void
.end method
