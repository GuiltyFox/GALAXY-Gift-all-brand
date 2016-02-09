.class Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    iput-object p2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1142
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->val$response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$6(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener$2;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$AsyncHttpResponseListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$7(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1144
    return-void
.end method
