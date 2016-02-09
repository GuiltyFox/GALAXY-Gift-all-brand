.class Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;
.super Landroid/os/AsyncTask;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/PostAsyncUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckFileTask"
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
    .registers 4
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 519
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 520
    iput-object p1, p0, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->gAppContext:Landroid/content/Context;

    .line 521
    const-string v0, "buzzebees.postasyn"

    const-string v1, "CheckFileTask.CheckFileTask"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 532
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->gAppContext:Landroid/content/Context;

    invoke-static {v4}, Lic/buzzebeeslib/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, "f":Ljava/io/File;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lic/buzzebeeslib/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    .line 535
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sput-object v4, Lic/buzzebeeslib/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    .line 536
    invoke-static {v5}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$0(Z)V

    .line 539
    const-string v4, "buzzebees.postasyn"

    const-string v5, "CheckFileTask.doInBackground:started"

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_24
    # getter for: Lic/buzzebeeslib/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z
    invoke-static {}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$1()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 577
    const-string v4, "All Done!"

    return-object v4

    .line 545
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 546
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3a

    .line 547
    array-length v4, v2

    if-lez v4, :cond_3a

    .line 548
    array-length v5, v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_7d

    const/4 v4, 0x0

    :goto_38
    if-lt v4, v5, :cond_42

    .line 571
    .end local v2    # "files":[Ljava/io/File;
    :cond_3a
    :goto_3a
    const-wide/16 v4, 0x1388

    :try_start_3c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_24

    .line 572
    :catch_40
    move-exception v4

    goto :goto_24

    .line 548
    .restart local v2    # "files":[Ljava/io/File;
    :cond_42
    :try_start_42
    aget-object v3, v2, v4
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_44} :catch_7d

    .line 550
    .local v3, "inFile":Ljava/io/File;
    :try_start_44
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 551
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5f

    .line 552
    iget-object v6, p0, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->gAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    # invokes: Lic/buzzebeeslib/util/PostAsyncUtil;->posting(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$2(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5f} :catch_62

    .line 548
    :cond_5f
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 557
    :catch_62
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    :try_start_63
    iget-object v6, p0, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->gAppContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7c} :catch_7d

    goto :goto_5f

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "inFile":Ljava/io/File;
    :catch_7d
    move-exception v4

    goto :goto_3a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 588
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 589
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 526
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 527
    const-string v0, "buzzebees.postasyn"

    const-string v1, "CheckFileTask.onPreExecute"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lic/buzzebeeslib/util/PostAsyncUtil$CheckFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
