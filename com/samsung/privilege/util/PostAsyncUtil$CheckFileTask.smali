.class Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;
.super Landroid/os/AsyncTask;
.source "PostAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/PostAsyncUtil;
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 568
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;)V
    .registers 2

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 577
    new-instance v2, Ljava/io/File;

    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$0()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/util/PostAsyncUtil;->PATH_QUEUE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v2, "folderQueue":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_18

    .line 579
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 582
    :cond_18
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/samsung/privilege/util/PostAsyncUtil;->MAP_POSTASYN:Ljava/util/HashMap;

    .line 583
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sput-object v4, Lcom/samsung/privilege/util/PostAsyncUtil;->QUEUE_POSTASYNC:Ljava/util/Queue;

    .line 584
    invoke-static {v6}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$1(Z)V

    .line 586
    const-string v4, "CheckFileTask.doInBackground:started"

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 588
    :goto_2e
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->TASK_CHECKFILE_WORKING:Z
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$2()Z

    move-result v4

    if-nez v4, :cond_37

    .line 646
    const-string v4, "All Done!"

    return-object v4

    .line 590
    :cond_37
    :try_start_37
    const-string v4, "#"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 592
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 593
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_4a

    .line 594
    array-length v4, v1

    if-lez v4, :cond_4a

    .line 595
    array-length v6, v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_89

    move v4, v5

    :goto_48
    if-lt v4, v6, :cond_52

    .line 638
    .end local v1    # "files":[Ljava/io/File;
    :cond_4a
    :goto_4a
    const-wide/16 v6, 0x1388

    :try_start_4c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_2e

    .line 639
    :catch_50
    move-exception v4

    goto :goto_2e

    .line 595
    .restart local v1    # "files":[Ljava/io/File;
    :cond_52
    :try_start_52
    aget-object v3, v1, v4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_54} :catch_89

    .line 597
    .local v3, "inFile":Ljava/io/File;
    :try_start_54
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 598
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6d

    .line 616
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->posting(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$3(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6d} :catch_70

    .line 595
    :cond_6d
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 622
    :catch_70
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    :try_start_71
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

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_88} :catch_89

    goto :goto_6d

    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "files":[Ljava/io/File;
    .end local v3    # "inFile":Ljava/io/File;
    :catch_89
    move-exception v4

    goto :goto_4a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 657
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 658
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 571
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 572
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 651
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 652
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/PostAsyncUtil$CheckFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
