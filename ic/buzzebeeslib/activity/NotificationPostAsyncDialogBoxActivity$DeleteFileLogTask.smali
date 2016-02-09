.class Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;
.super Landroid/os/AsyncTask;
.source "NotificationPostAsyncDialogBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteFileLogTask"
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
    .line 323
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;)V
    .registers 2

    .prologue
    .line 323
    invoke-direct {p0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 334
    const-string v0, "All Done!"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 327
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    # invokes: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->DeleteFileLog(Ljava/lang/String;)V
    invoke-static {v0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$5(Ljava/lang/String;)V

    .line 328
    # getter for: Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;
    invoke-static {}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->access$3()Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity;->finish()V

    .line 329
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/NotificationPostAsyncDialogBoxActivity$DeleteFileLogTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
