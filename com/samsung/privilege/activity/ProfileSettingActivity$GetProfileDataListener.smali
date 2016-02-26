.class public Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "ProfileSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetProfileDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 2

    .prologue
    .line 483
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;)Lcom/samsung/privilege/activity/ProfileSettingActivity;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 486
    const-string v0, "profile.setting"

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

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$3(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener$1;-><init>(Lcom/samsung/privilege/activity/ProfileSettingActivity$GetProfileDataListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method
