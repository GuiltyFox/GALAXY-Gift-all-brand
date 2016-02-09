.class Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$3;
.super Ljava/lang/Object;
.source "NotificationPostAsyncDialogBoxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->showDialogConfirmRetryOrCancel(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$3;->this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    # getter for: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User click Cancel..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 235
    new-instance v0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;

    invoke-direct {v0, v5}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;-><init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 236
    new-instance v0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;

    invoke-direct {v0, v5}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;-><init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    # invokes: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->CancelNotification()V
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$7()V

    .line 239
    return-void
.end method
