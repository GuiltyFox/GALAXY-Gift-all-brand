.class Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$4;
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$4;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 235
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User click Close..."

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 237
    iget-object v0, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$4;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->finish()V

    .line 238
    return-void
.end method
