.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$BackgroundTask;,
        Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$DataProgressCallback;,
        Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;
    }
.end annotation


# static fields
.field public static final sIOThreads:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils;->sIOThreads:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 39
    .local v0, "buf":[B
    :goto_e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-gtz v2, :cond_1b

    .line 42
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 43
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 45
    return-void

    .line 40
    :cond_1b
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_e
.end method

.method public static getPhoneLogs()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 109
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "logcat"

    aput-object v4, v2, v3

    const-string v3, "-d"

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 110
    .local v0, "builder":Ljava/lang/ProcessBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 113
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public static pumpStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$DataProgressCallback;)V
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "callback"    # Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$DataProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 52
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 53
    .local v0, "buff":[B
    const/4 v1, 0x0

    .line 54
    .local v1, "bytesRead":I
    :cond_6
    :goto_6
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 60
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 61
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 62
    return-void

    .line 55
    :cond_15
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 56
    if-eqz p2, :cond_6

    .line 57
    invoke-interface {p2, v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$DataProgressCallback;->onDataProgress(I)V

    goto :goto_6
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils;->pumpStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$DataProgressCallback;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[B)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 28
    .local v0, "fout":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 32
    return-void

    .line 29
    :catchall_c
    move-exception v1

    .line 30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 31
    throw v1
.end method
