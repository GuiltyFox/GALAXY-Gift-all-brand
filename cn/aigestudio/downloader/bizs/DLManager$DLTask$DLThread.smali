.class Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;
.super Ljava/lang/Object;
.source "DLManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/aigestudio/downloader/bizs/DLManager$DLTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLThread"
.end annotation


# instance fields
.field private info:Lcn/aigestudio/downloader/entities/ThreadInfo;

.field private mListener:Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

.field private progress:I

.field final synthetic this$1:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;


# direct methods
.method public constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;Lcn/aigestudio/downloader/entities/ThreadInfo;Lcn/aigestudio/downloader/interfaces/IDLThreadListener;)V
    .registers 4
    .param p2, "info"    # Lcn/aigestudio/downloader/entities/ThreadInfo;
    .param p3, "listener"    # Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

    .prologue
    .line 295
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->this$1:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    .line 297
    iput-object p3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->mListener:Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

    .line 298
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, -0x1

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 304
    .local v5, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 306
    .local v3, "is":Ljava/io/InputStream;
    :try_start_4
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v8, v8, Lcn/aigestudio/downloader/entities/ThreadInfo;->realUrl:Ljava/lang/String;

    invoke-static {v8}, Lcn/aigestudio/downloader/utils/NetUtil;->buildConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 307
    const-string/jumbo v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v10, v10, Lcn/aigestudio/downloader/entities/ThreadInfo;->start:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v10, v10, Lcn/aigestudio/downloader/entities/ThreadInfo;->end:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v8, v8, Lcn/aigestudio/downloader/entities/ThreadInfo;->dlLocalFile:Ljava/io/File;

    const-string/jumbo v9, "rwd"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_45} :catch_167
    .catchall {:try_start_4 .. :try_end_45} :catchall_165

    .line 311
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_45
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xce

    if-ne v8, v9, :cond_113

    .line 312
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->this$1:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isResume:Z
    invoke-static {v8}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->access$600(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 313
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v8

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    invoke-virtual {v8, v9}, Lcn/aigestudio/downloader/bizs/DBManager;->insertThreadInfo(Lcn/aigestudio/downloader/entities/ThreadInfo;)V

    .line 315
    :cond_5e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 316
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v8, v8, Lcn/aigestudio/downloader/entities/ThreadInfo;->start:I

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 317
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v8, v8, Lcn/aigestudio/downloader/entities/ThreadInfo;->end:I

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v9, v9, Lcn/aigestudio/downloader/entities/ThreadInfo;->start:I

    sub-int v7, v8, v9

    .line 318
    .local v7, "total":I
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 320
    .local v0, "b":[B
    :cond_78
    :goto_78
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->this$1:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isStop:Z
    invoke-static {v8}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->access$700(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z

    move-result v8

    if-nez v8, :cond_d8

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-eq v4, v11, :cond_d8

    .line 321
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 322
    iget v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->progress:I

    add-int/2addr v8, v4

    iput v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->progress:I

    .line 323
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->mListener:Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

    invoke-interface {v8, v4}, Lcn/aigestudio/downloader/interfaces/IDLThreadListener;->onThreadProgress(I)V

    .line 324
    iget v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->progress:I

    if-lt v8, v7, :cond_78

    .line 325
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v8

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v9, v9, Lcn/aigestudio/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/aigestudio/downloader/bizs/DBManager;->deleteThreadInfoById(Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_a3} :catch_a4
    .catchall {:try_start_45 .. :try_end_a3} :catchall_143

    goto :goto_78

    .line 342
    .end local v0    # "b":[B
    .end local v4    # "len":I
    .end local v7    # "total":I
    :catch_a4
    move-exception v2

    move-object v5, v6

    .line 343
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :goto_a6
    :try_start_a6
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v8

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v9, v9, Lcn/aigestudio/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/aigestudio/downloader/bizs/DBManager;->queryThreadInfoById(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/ThreadInfo;

    move-result-object v8

    if-eqz v8, :cond_c8

    .line 344
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v9, v9, Lcn/aigestudio/downloader/entities/ThreadInfo;->start:I

    iget v10, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->progress:I

    add-int/2addr v9, v10

    iput v9, v8, Lcn/aigestudio/downloader/entities/ThreadInfo;->start:I

    .line 345
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v8

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    invoke-virtual {v8, v9}, Lcn/aigestudio/downloader/bizs/DBManager;->updateThreadInfo(Lcn/aigestudio/downloader/entities/ThreadInfo;)V
    :try_end_c8
    .catchall {:try_start_a6 .. :try_end_c8} :catchall_165

    .line 349
    :cond_c8
    if-eqz v3, :cond_cd

    .line 350
    :try_start_ca
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 352
    :cond_cd
    if-eqz v5, :cond_d2

    .line 353
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d2} :catch_15a

    .line 358
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d2
    :goto_d2
    if-eqz v1, :cond_d7

    .line 359
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 362
    :cond_d7
    :goto_d7
    return-void

    .line 328
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v0    # "b":[B
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "total":I
    :cond_d8
    :try_start_d8
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->this$1:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isStop:Z
    invoke-static {v8}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->access$700(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z

    move-result v8

    if-eqz v8, :cond_102

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v8

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v9, v9, Lcn/aigestudio/downloader/entities/ThreadInfo;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/aigestudio/downloader/bizs/DBManager;->queryThreadInfoById(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/ThreadInfo;

    move-result-object v8

    if-eqz v8, :cond_102

    .line 329
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v9, v9, Lcn/aigestudio/downloader/entities/ThreadInfo;->start:I

    iget v10, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->progress:I

    add-int/2addr v9, v10

    iput v9, v8, Lcn/aigestudio/downloader/entities/ThreadInfo;->start:I

    .line 330
    # getter for: Lcn/aigestudio/downloader/bizs/DLManager;->sDBManager:Lcn/aigestudio/downloader/bizs/DBManager;
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->access$200()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v8

    iget-object v9, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    invoke-virtual {v8, v9}, Lcn/aigestudio/downloader/bizs/DBManager;->updateThreadInfo(Lcn/aigestudio/downloader/entities/ThreadInfo;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_102} :catch_a4
    .catchall {:try_start_d8 .. :try_end_102} :catchall_143

    .line 349
    .end local v0    # "b":[B
    .end local v7    # "total":I
    :cond_102
    if-eqz v3, :cond_107

    .line 350
    :try_start_104
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 352
    :cond_107
    if-eqz v6, :cond_10c

    .line 353
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_10c} :catch_155

    .line 358
    :cond_10c
    :goto_10c
    if-eqz v1, :cond_16a

    .line 359
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_d7

    .line 332
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :cond_113
    :try_start_113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_102

    .line 333
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 334
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->info:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v8, v8, Lcn/aigestudio/downloader/entities/ThreadInfo;->start:I

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 335
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 337
    .restart local v0    # "b":[B
    :goto_12b
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->this$1:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    # getter for: Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->isStop:Z
    invoke-static {v8}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->access$700(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z

    move-result v8

    if-nez v8, :cond_102

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .restart local v4    # "len":I
    if-eq v4, v11, :cond_102

    .line 338
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 339
    iget-object v8, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->mListener:Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

    invoke-interface {v8, v4}, Lcn/aigestudio/downloader/interfaces/IDLThreadListener;->onThreadProgress(I)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_142} :catch_a4
    .catchall {:try_start_113 .. :try_end_142} :catchall_143

    goto :goto_12b

    .line 348
    .end local v0    # "b":[B
    .end local v4    # "len":I
    :catchall_143
    move-exception v8

    move-object v5, v6

    .line 349
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :goto_145
    if-eqz v3, :cond_14a

    .line 350
    :try_start_147
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 352
    :cond_14a
    if-eqz v5, :cond_14f

    .line 353
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14f} :catch_160

    .line 358
    :cond_14f
    :goto_14f
    if-eqz v1, :cond_154

    .line 359
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_154
    throw v8

    .line 355
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_155
    move-exception v2

    .line 356
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10c

    .line 355
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_15a
    move-exception v2

    .line 356
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d2

    .line 355
    .end local v2    # "e":Ljava/io/IOException;
    :catch_160
    move-exception v2

    .line 356
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14f

    .line 348
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_165
    move-exception v8

    goto :goto_145

    .line 342
    :catch_167
    move-exception v2

    goto/16 :goto_a6

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :cond_16a
    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_d7
.end method
