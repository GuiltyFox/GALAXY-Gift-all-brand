.class Lcom/samsung/privilege/activity/NFCLauncherActivity$1;
.super Ljava/lang/Object;
.source "NFCLauncherActivity.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/NFCLauncherActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NFCLauncherActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$1;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const/4 v2, 0x0

    .line 132
    if-eqz p2, :cond_1f

    .line 133
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_13

    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$1;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    const-string v1, "feed cancelled"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    :goto_12
    return-void

    .line 136
    :cond_13
    iget-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$1;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    const-string v1, "Network Error"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12

    .line 139
    :cond_1f
    iget-object v0, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$1;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;

    const-string v1, "done"

    # invokes: Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V

    goto :goto_12
.end method
