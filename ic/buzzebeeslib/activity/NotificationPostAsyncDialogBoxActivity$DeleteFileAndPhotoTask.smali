.class Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;
.super Landroid/os/AsyncTask;
.source "NotificationPostAsyncDialogBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteFileAndPhotoTask"
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;)V
    .registers 2

    .prologue
    .line 293
    invoke-direct {p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 304
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteFileAndPhotoTask.doInBackground"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "All Done!"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 319
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteFileAndPhotoTask.onPostExecute"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 296
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 297
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteFileAndPhotoTask.onPreExecute"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->DeleteFileAndPhoto(Ljava/lang/String;)V
    invoke-static {v0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$4(Ljava/lang/String;)V

    .line 299
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$3()Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->finish()V

    .line 300
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 313
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteFileAndPhotoTask.onProgressUpdate"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileAndPhotoTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
