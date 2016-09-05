.class Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;
.super Ljava/lang/Object;
.source "DLManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

.field private b:Lcn/aigestudio/downloader/entities/ThreadInfo;

.field private c:Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

.field private d:I


# direct methods
.method public constructor <init>(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;Lcn/aigestudio/downloader/entities/ThreadInfo;Lcn/aigestudio/downloader/interfaces/IDLThreadListener;)V
    .registers 4

    .prologue
    .line 295
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->a:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    .line 297
    iput-object p3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->c:Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

    .line 298
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v7, -0x1

    const/4 v0, 0x0

    .line 302
    .line 306
    :try_start_2
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v1, v1, Lcn/aigestudio/downloader/entities/ThreadInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Lcn/aigestudio/downloader/utils/NetUtil;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_179
    .catchall {:try_start_2 .. :try_end_9} :catchall_164

    move-result-object v2

    .line 307
    :try_start_a
    const-string/jumbo v1, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v4, v4, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v4, v4, Lcn/aigestudio/downloader/entities/ThreadInfo;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v3, v3, Lcn/aigestudio/downloader/entities/ThreadInfo;->a:Ljava/io/File;

    const-string/jumbo v4, "rwd"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_43} :catch_17e
    .catchall {:try_start_a .. :try_end_43} :catchall_16b

    .line 311
    :try_start_43
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_10e

    .line 312
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->a:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->a(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 313
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    invoke-virtual {v3, v4}, Lcn/aigestudio/downloader/bizs/DBManager;->a(Lcn/aigestudio/downloader/entities/ThreadInfo;)V

    .line 315
    :cond_5c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5f} :catch_a1
    .catchall {:try_start_43 .. :try_end_5f} :catchall_172

    move-result-object v0

    .line 316
    :try_start_60
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v3, v3, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 317
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v3, v3, Lcn/aigestudio/downloader/entities/ThreadInfo;->f:I

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v4, v4, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    sub-int/2addr v3, v4

    .line 318
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 320
    :cond_75
    :goto_75
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->a:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    invoke-static {v5}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z

    move-result v5

    if-nez v5, :cond_d4

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v7, :cond_d4

    .line 321
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 322
    iget v6, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->d:I

    add-int/2addr v6, v5

    iput v6, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->d:I

    .line 323
    iget-object v6, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->c:Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

    invoke-interface {v6, v5}, Lcn/aigestudio/downloader/interfaces/IDLThreadListener;->a(I)V

    .line 324
    iget v5, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->d:I

    if-lt v5, v3, :cond_75

    .line 325
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v5

    iget-object v6, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v6, v6, Lcn/aigestudio/downloader/entities/ThreadInfo;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcn/aigestudio/downloader/bizs/DBManager;->c(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a0} :catch_a1
    .catchall {:try_start_60 .. :try_end_a0} :catchall_13e

    goto :goto_75

    .line 342
    :catch_a1
    move-exception v3

    .line 343
    :goto_a2
    :try_start_a2
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v4, v4, Lcn/aigestudio/downloader/entities/ThreadInfo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/aigestudio/downloader/bizs/DBManager;->d(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/ThreadInfo;

    move-result-object v3

    if-eqz v3, :cond_c4

    .line 344
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v4, v4, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    iget v5, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->d:I

    add-int/2addr v4, v5

    iput v4, v3, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    .line 345
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    invoke-virtual {v3, v4}, Lcn/aigestudio/downloader/bizs/DBManager;->b(Lcn/aigestudio/downloader/entities/ThreadInfo;)V
    :try_end_c4
    .catchall {:try_start_a2 .. :try_end_c4} :catchall_13e

    .line 349
    :cond_c4
    if-eqz v0, :cond_c9

    .line 350
    :try_start_c6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 352
    :cond_c9
    if-eqz v1, :cond_ce

    .line 353
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ce} :catch_159

    .line 358
    :cond_ce
    :goto_ce
    if-eqz v2, :cond_d3

    .line 359
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 362
    :cond_d3
    :goto_d3
    return-void

    .line 328
    :cond_d4
    :try_start_d4
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->a:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    invoke-static {v3}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z

    move-result v3

    if-eqz v3, :cond_fe

    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v4, v4, Lcn/aigestudio/downloader/entities/ThreadInfo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/aigestudio/downloader/bizs/DBManager;->d(Ljava/lang/String;)Lcn/aigestudio/downloader/entities/ThreadInfo;

    move-result-object v3

    if-eqz v3, :cond_fe

    .line 329
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v4, v4, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    iget v5, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->d:I

    add-int/2addr v4, v5

    iput v4, v3, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    .line 330
    invoke-static {}, Lcn/aigestudio/downloader/bizs/DLManager;->b()Lcn/aigestudio/downloader/bizs/DBManager;

    move-result-object v3

    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    invoke-virtual {v3, v4}, Lcn/aigestudio/downloader/bizs/DBManager;->b(Lcn/aigestudio/downloader/entities/ThreadInfo;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_fe} :catch_a1
    .catchall {:try_start_d4 .. :try_end_fe} :catchall_13e

    .line 349
    :cond_fe
    if-eqz v0, :cond_103

    .line 350
    :try_start_100
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 352
    :cond_103
    if-eqz v1, :cond_108

    .line 353
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_108} :catch_154

    .line 358
    :cond_108
    :goto_108
    if-eqz v2, :cond_d3

    .line 359
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_d3

    .line 332
    :cond_10e
    :try_start_10e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_fe

    .line 333
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_119} :catch_a1
    .catchall {:try_start_10e .. :try_end_119} :catchall_172

    move-result-object v0

    .line 334
    :try_start_11a
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->b:Lcn/aigestudio/downloader/entities/ThreadInfo;

    iget v3, v3, Lcn/aigestudio/downloader/entities/ThreadInfo;->e:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 335
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 337
    :goto_126
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->a:Lcn/aigestudio/downloader/bizs/DLManager$DLTask;

    invoke-static {v4}, Lcn/aigestudio/downloader/bizs/DLManager$DLTask;->b(Lcn/aigestudio/downloader/bizs/DLManager$DLTask;)Z

    move-result v4

    if-nez v4, :cond_fe

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v7, :cond_fe

    .line 338
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 339
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/DLManager$DLTask$DLThread;->c:Lcn/aigestudio/downloader/interfaces/IDLThreadListener;

    invoke-interface {v5, v4}, Lcn/aigestudio/downloader/interfaces/IDLThreadListener;->a(I)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_13d} :catch_a1
    .catchall {:try_start_11a .. :try_end_13d} :catchall_13e

    goto :goto_126

    .line 348
    :catchall_13e
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    .line 349
    :goto_144
    if-eqz v1, :cond_149

    .line 350
    :try_start_146
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 352
    :cond_149
    if-eqz v2, :cond_14e

    .line 353
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14e} :catch_15f

    .line 358
    :cond_14e
    :goto_14e
    if-eqz v3, :cond_153

    .line 359
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_153
    throw v0

    .line 355
    :catch_154
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_108

    .line 355
    :catch_159
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ce

    .line 355
    :catch_15f
    move-exception v1

    .line 356
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14e

    .line 348
    :catchall_164
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_144

    :catchall_16b
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_144

    :catchall_172
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_144

    .line 342
    :catch_179
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_a2

    :catch_17e
    move-exception v1

    move-object v1, v0

    goto/16 :goto_a2
.end method
