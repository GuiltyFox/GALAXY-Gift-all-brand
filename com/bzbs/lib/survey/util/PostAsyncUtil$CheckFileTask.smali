.class Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;
.super Landroid/os/AsyncTask;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/PostAsyncUtil;
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
    .line 516
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->gAppContext:Landroid/content/Context;

    .line 518
    const-string/jumbo v0, "buzzebees.postasyn"

    const-string/jumbo v1, "CheckFileTask.CheckFileTask"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 513
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 529
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->gAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    .local v1, "f":Ljava/io/File;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    .line 532
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sput-object v4, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    .line 533
    # setter for: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z
    invoke-static {v9}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$002(Z)Z

    .line 536
    const-string/jumbo v4, "buzzebees.postasyn"

    const-string/jumbo v5, "CheckFileTask.doInBackground:started"

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :goto_26
    # getter for: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z
    invoke-static {}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$000()Z

    move-result v4

    if-ne v4, v9, :cond_83

    .line 542
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 543
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_7b

    .line 544
    array-length v4, v2

    if-lez v4, :cond_7b

    .line 545
    array-length v5, v2

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v5, :cond_7b

    aget-object v3, v2, v4
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3b} :catch_7a

    .line 547
    .local v3, "inFile":Ljava/io/File;
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 548
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 549
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->gAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->posting(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$100(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_57} :catch_5a

    .line 545
    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 554
    :catch_5a
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5b
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->gAppContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_79} :catch_7a

    goto :goto_57

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "inFile":Ljava/io/File;
    :catch_7a
    move-exception v4

    .line 568
    :cond_7b
    const-wide/16 v4, 0x1388

    :try_start_7d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_26

    .line 569
    :catch_81
    move-exception v4

    goto :goto_26

    .line 574
    :cond_83
    const-string/jumbo v4, "All Done!"

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 513
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 585
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 586
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 523
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 524
    const-string/jumbo v0, "buzzebees.postasyn"

    const-string/jumbo v1, "CheckFileTask.onPreExecute"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 579
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 513
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/PostAsyncUtil$CheckFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
