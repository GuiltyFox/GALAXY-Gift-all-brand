.class Lcom/samsung/privilege/activity/ProfileSettingActivity$3;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetGender(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 199
    :cond_48
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$3;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    const v2, 0x7f0902e5

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    :cond_56
    return-void
.end method
