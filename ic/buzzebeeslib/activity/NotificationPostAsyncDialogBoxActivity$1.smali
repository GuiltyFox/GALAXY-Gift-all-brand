.class Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$1;
.super Ljava/lang/Object;
.source "NotificationPostAsyncDialogBoxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 46
    iget-object v0, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    sget v2, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    sget v4, Lic/buzzebeeslib/R$string;->post_facebook_retry_cancel_en:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$1;->this$0:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    sget v4, Lic/buzzebeeslib/R$string;->post_facebook_retry_cancel_th:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->showDialogConfirmRetryOrCancel(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$6(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
