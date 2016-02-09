.class Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;

    iput p2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 578
    iget v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_43

    .line 579
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lic/buzzebeeslib/activity/ProfileSettingActivity;->ProcessJsonProfileAndGenUI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$5(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "profiles_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;

    iget-object v1, v1, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->val$response_text:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 584
    :goto_33
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gPbLoadingProfile:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$7(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 585
    return-void

    .line 582
    :cond_43
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;->this$1:Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;

    move-result-object v0

    const-string v1, "Can not load profile data."

    # invokes: Lic/buzzebeeslib/activity/ProfileSettingActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$6(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V

    goto :goto_33
.end method
