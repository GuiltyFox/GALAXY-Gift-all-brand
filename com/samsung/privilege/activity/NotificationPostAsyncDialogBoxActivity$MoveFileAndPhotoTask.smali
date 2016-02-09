.class Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;
.super Landroid/os/AsyncTask;
.source "NotificationPostAsyncDialogBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final synthetic this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;)V
    .registers 3

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;-><init>(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 281
    # getter for: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveFileAndPhotoTask.doInBackground"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "All Done!"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 295
    # getter for: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveFileAndPhotoTask.onPostExecute"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 273
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 274
    # getter for: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveFileAndPhotoTask.onPreExecute"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->this$0:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    # getter for: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gFileFail:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$1()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->MoveFileAndPhoto(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$2(Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;Ljava/lang/String;)V

    .line 276
    # getter for: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->gActivity:Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$3()Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->finish()V

    .line 277
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 289
    # getter for: Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveFileAndPhotoTask.onProgressUpdate"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/NotificationPostAsyncDialogBoxActivity$MoveFileAndPhotoTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
