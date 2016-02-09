.class Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;
.super Landroid/os/AsyncTask;
.source "NotificationPostAsyncDialogBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveFileAndPhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field gAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 262
    iput-object p1, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->gAppContext:Landroid/content/Context;

    .line 263
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 275
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveFileAndPhotoTask.doInBackground"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "All Done!"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 289
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveFileAndPhotoTask.onPostExecute"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 267
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 268
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveFileAndPhotoTask.onPreExecute"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->gAppContext:Landroid/content/Context;

    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$1()Ljava/lang/String;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$2(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$3()Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->finish()V

    .line 271
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 283
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveFileAndPhotoTask.onProgressUpdate"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
