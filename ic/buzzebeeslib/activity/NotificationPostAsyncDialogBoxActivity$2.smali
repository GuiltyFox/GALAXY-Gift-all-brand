.class Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$2;
.super Ljava/lang/Object;
.source "NotificationPostAsyncDialogBoxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->showDialogConfirmRetryOrCancel(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$2;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User click Retry..."

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 214
    new-instance v0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;

    iget-object v1, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$2;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;-><init>(Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    new-instance v0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;-><init>(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    # invokes: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->CancelNotification()V
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$7()V

    .line 218
    return-void
.end method
