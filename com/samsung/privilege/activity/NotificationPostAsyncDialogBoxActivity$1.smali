.class Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$1;
.super Ljava/lang/Object;
.source "NotificationPostAsyncDialogBoxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    const v3, 0x7f0a0338

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->showDialogConfirmRetryOrCancel(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$6(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
