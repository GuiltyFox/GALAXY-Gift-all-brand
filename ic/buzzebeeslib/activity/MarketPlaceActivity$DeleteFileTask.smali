.class Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;
.super Landroid/os/AsyncTask;
.source "MarketPlaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/MarketPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;)V
    .registers 3

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;-><init>(Lic/buzzebeeslib/activity/MarketPlaceActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 226
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Ljava/io/File;

    .line 227
    .local v0, "root":Ljava/io/File;
    if-eqz v0, :cond_1f

    .line 228
    const-string v1, "MarketPlaceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground root "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1f
    invoke-static {v0}, Lic/buzzebeeslib/util/DeleteDir;->deleteDirectory(Ljava/io/File;)Z

    .line 233
    const-string v1, "done"

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 239
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->access$1(Lic/buzzebeeslib/activity/MarketPlaceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 241
    :cond_11
    return-void
.end method

.method protected onPreExecute()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 217
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;

    const-string v2, ""

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceActivity$DeleteFileTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceActivity;

    sget v4, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceActivity;->access$0(Lic/buzzebeeslib/activity/MarketPlaceActivity;Landroid/app/ProgressDialog;)V

    .line 218
    return-void
.end method
