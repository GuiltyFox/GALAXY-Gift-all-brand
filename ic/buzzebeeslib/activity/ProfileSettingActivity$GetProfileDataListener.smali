.class public Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "ProfileSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetProfileDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;Ljava/lang/String;)V
    .registers 4
    .param p2, "pUid"    # Ljava/lang/String;

    .prologue
    .line 567
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->uid:Ljava/lang/String;

    .line 568
    iput-object p2, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->uid:Ljava/lang/String;

    .line 569
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;)Lic/buzzebeeslib/activity/ProfileSettingActivity;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 573
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$3(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response_code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response_text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_38

    .line 575
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    # getter for: Lic/buzzebeeslib/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$4(Lic/buzzebeeslib/activity/ProfileSettingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;

    invoke-direct {v1, p0, p1, p2}, Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener$1;-><init>(Lic/buzzebeeslib/activity/ProfileSettingActivity$GetProfileDataListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    :cond_38
    return-void
.end method
