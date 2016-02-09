.class Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;
.super Ljava/lang/Object;
.source "NFCLauncherActivity.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/NFCLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SampleDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NFCLauncherActivity;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .prologue
    .line 219
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$0(Lcom/samsung/privilege/activity/NFCLauncherActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "values:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    const-string v1, "done"

    # invokes: Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .registers 7
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_29

    move-result v2

    if-eqz v2, :cond_e

    .line 203
    const/4 v0, 0x1

    .line 208
    :cond_e
    :goto_e
    if-eqz v0, :cond_28

    .line 209
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V

    .line 214
    :cond_28
    return-void

    .line 205
    :catch_29
    move-exception v1

    .line 206
    .local v1, "e2":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$0(Lcom/samsung/privilege/activity/NFCLauncherActivity;)Ljava/lang/String;

    move-result-object v2

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

    goto :goto_e
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .registers 7
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "blnIsAdmin":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_29

    move-result v2

    if-eqz v2, :cond_e

    .line 186
    const/4 v0, 0x1

    .line 191
    :cond_e
    :goto_e
    if-eqz v0, :cond_28

    .line 192
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V

    .line 196
    :cond_28
    return-void

    .line 188
    :catch_29
    move-exception v1

    .line 189
    .local v1, "e2":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$SampleDialogListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$0(Lcom/samsung/privilege/activity/NFCLauncherActivity;)Ljava/lang/String;

    move-result-object v2

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

    goto :goto_e
.end method
