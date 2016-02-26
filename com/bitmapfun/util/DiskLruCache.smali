.class public final Lcom/bitmapfun/util/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitmapfun/util/DiskLruCache$Editor;,
        Lcom/bitmapfun/util/DiskLruCache$Entry;,
        Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bitmapfun/util/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bitmapfun/util/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    .line 112
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 14
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide v4, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 171
    iput-wide v4, p0, Lcom/bitmapfun/util/DiskLruCache;->nextSequenceNumber:J

    .line 270
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 271
    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/bitmapfun/util/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 272
    new-instance v0, Lcom/bitmapfun/util/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/bitmapfun/util/DiskLruCache$1;-><init>(Lcom/bitmapfun/util/DiskLruCache;)V

    iput-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 289
    iput-object p1, p0, Lcom/bitmapfun/util/DiskLruCache;->directory:Ljava/io/File;

    .line 290
    iput p2, p0, Lcom/bitmapfun/util/DiskLruCache;->appVersion:I

    .line 291
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->journalFile:Ljava/io/File;

    .line 292
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 293
    iput p3, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    .line 294
    iput-wide p4, p0, Lcom/bitmapfun/util/DiskLruCache;->maxSize:J

    .line 295
    return-void
.end method

.method static synthetic access$0(Lcom/bitmapfun/util/DiskLruCache;)Ljava/io/Writer;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bitmapfun/util/DiskLruCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/bitmapfun/util/DiskLruCache;)Ljava/io/File;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bitmapfun/util/DiskLruCache;)Z
    .registers 2

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/bitmapfun/util/DiskLruCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lcom/bitmapfun/util/DiskLruCache;I)V
    .registers 2

    .prologue
    .line 164
    iput p1, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;J)Lcom/bitmapfun/util/DiskLruCache$Editor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-direct {p0, p1, p2, p3}, Lcom/bitmapfun/util/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-static {p0}, Lcom/bitmapfun/util/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7()Ljava/nio/charset/Charset;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/bitmapfun/util/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$8(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Lcom/bitmapfun/util/DiskLruCache;->completeEdit(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/bitmapfun/util/DiskLruCache;)I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    return v0
.end method

.method private checkNotClosed()V
    .registers 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_c

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_c
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 240
    if-eqz p0, :cond_5

    .line 242
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 248
    :cond_5
    :goto_5
    return-void

    .line 243
    :catch_6
    move-exception v0

    .line 244
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 245
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v1

    goto :goto_5
.end method

.method private declared-synchronized completeEdit(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V
    .registers 15
    .param p1, "editor"    # Lcom/bitmapfun/util/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    monitor-enter p0

    :try_start_1
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/bitmapfun/util/DiskLruCache$Editor;->access$2(Lcom/bitmapfun/util/DiskLruCache$Editor;)Lcom/bitmapfun/util/DiskLruCache$Entry;

    move-result-object v2

    .line 567
    .local v2, "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$0(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_14

    .line 568
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 566
    .end local v2    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    :catchall_11
    move-exception v8

    monitor-exit p0

    throw v8

    .line 572
    .restart local v2    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    :cond_14
    if-eqz p2, :cond_21

    :try_start_16
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$1(Lcom/bitmapfun/util/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_21

    .line 573
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    iget v8, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    if-lt v3, v8, :cond_84

    .line 581
    .end local v3    # "i":I
    :cond_21
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_22
    iget v8, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    if-lt v3, v8, :cond_aa

    .line 597
    iget v8, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    .line 598
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$5(Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$Editor;)V

    .line 599
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$1(Lcom/bitmapfun/util/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_db

    .line 600
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$4(Lcom/bitmapfun/util/DiskLruCache$Entry;Z)V

    .line 601
    iget-object v8, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CLEAN "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$2(Lcom/bitmapfun/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 602
    if-eqz p2, :cond_6d

    .line 603
    iget-wide v8, p0, Lcom/bitmapfun/util/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/bitmapfun/util/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$9(Lcom/bitmapfun/util/DiskLruCache$Entry;J)V

    .line 610
    :cond_6d
    :goto_6d
    iget-wide v8, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/bitmapfun/util/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7b

    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 611
    :cond_7b
    iget-object v8, p0, Lcom/bitmapfun/util/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/bitmapfun/util/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_82
    .catchall {:try_start_16 .. :try_end_82} :catchall_11

    .line 613
    :cond_82
    monitor-exit p0

    return-void

    .line 574
    :cond_84
    :try_start_84
    invoke-virtual {v2, v3}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a6

    .line 575
    invoke-virtual {p1}, Lcom/bitmapfun/util/DiskLruCache$Editor;->abort()V

    .line 576
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "edit didn\'t create file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 573
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1d

    .line 582
    :cond_aa
    invoke-virtual {v2, v3}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 583
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_d7

    .line 584
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 585
    invoke-virtual {v2, v3}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 586
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 587
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$7(Lcom/bitmapfun/util/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 588
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 589
    .local v4, "newLength":J
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$7(Lcom/bitmapfun/util/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 590
    iget-wide v8, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    .line 581
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_d3
    :goto_d3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_22

    .line 593
    :cond_d7
    invoke-static {v1}, Lcom/bitmapfun/util/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_d3

    .line 606
    .end local v1    # "dirty":Ljava/io/File;
    :cond_db
    iget-object v8, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$2(Lcom/bitmapfun/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v8, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "REMOVE "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$2(Lcom/bitmapfun/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_102
    .catchall {:try_start_84 .. :try_end_102} :catchall_11

    goto/16 :goto_6d
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 8
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 176
    array-length v1, p0

    .line 177
    .local v1, "originalLength":I
    if-le p1, p2, :cond_9

    .line 178
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 180
    :cond_9
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 181
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 183
    :cond_13
    sub-int v3, p2, p1

    .line 184
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 186
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 185
    check-cast v2, [Ljava/lang/Object;

    .line 187
    .local v2, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    return-object v2
.end method

.method public static deleteContents(Ljava/io/File;)V
    .registers 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 256
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1b

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not a directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_1b
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1d
    if-lt v2, v3, :cond_20

    .line 267
    return-void

    .line 259
    :cond_20
    aget-object v0, v1, v2

    .line 260
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 261
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 263
    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_46

    .line 264
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_12

    .line 464
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 466
    :cond_12
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/bitmapfun/util/DiskLruCache$Editor;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 518
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->checkNotClosed()V

    .line 519
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bitmapfun/util/DiskLruCache$Entry;

    .line 521
    .local v1, "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_22

    .line 522
    if-eqz v1, :cond_20

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$8(Lcom/bitmapfun/util/DiskLruCache$Entry;)J
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_58

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_22

    .line 538
    :cond_20
    :goto_20
    monitor-exit p0

    return-object v0

    .line 525
    :cond_22
    if-nez v1, :cond_5b

    .line 526
    :try_start_24
    new-instance v1, Lcom/bitmapfun/util/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;-><init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;Lcom/bitmapfun/util/DiskLruCache$Entry;)V

    .line 527
    .restart local v1    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_2f
    new-instance v0, Lcom/bitmapfun/util/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/bitmapfun/util/DiskLruCache$Editor;-><init>(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$Editor;)V

    .line 533
    .local v0, "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$5(Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$Editor;)V

    .line 536
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_57
    .catchall {:try_start_24 .. :try_end_57} :catchall_58

    goto :goto_20

    .line 518
    .end local v0    # "editor":Lcom/bitmapfun/util/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    :catchall_58
    move-exception v2

    monitor-exit p0

    throw v2

    .line 528
    .restart local v1    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    :cond_5b
    :try_start_5b
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$0(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_58

    move-result-object v2

    if-eqz v2, :cond_2f

    goto :goto_20
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/bitmapfun/util/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .registers 4

    .prologue
    .line 620
    const/16 v0, 0x7d0

    .line 621
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_14

    .line 622
    iget v1, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 621
    if-lt v1, v2, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/bitmapfun/util/DiskLruCache;
    .registers 14
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_e

    .line 310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_e
    if-gtz p2, :cond_18

    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_18
    new-instance v0, Lcom/bitmapfun/util/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bitmapfun/util/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 318
    .local v0, "cache":Lcom/bitmapfun/util/DiskLruCache;
    iget-object v1, v0, Lcom/bitmapfun/util/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 320
    :try_start_29
    invoke-direct {v0}, Lcom/bitmapfun/util/DiskLruCache;->readJournal()V

    .line 321
    invoke-direct {v0}, Lcom/bitmapfun/util/DiskLruCache;->processJournal()V

    .line 322
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/bitmapfun/util/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 323
    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 322
    iput-object v1, v0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_40} :catch_42

    move-object v6, v0

    .line 336
    .end local v0    # "cache":Lcom/bitmapfun/util/DiskLruCache;
    .local v6, "cache":Ljava/lang/Object;
    :goto_41
    return-object v6

    .line 325
    .end local v6    # "cache":Ljava/lang/Object;
    .restart local v0    # "cache":Lcom/bitmapfun/util/DiskLruCache;
    :catch_42
    move-exception v7

    .line 328
    .local v7, "journalIsCorrupt":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/bitmapfun/util/DiskLruCache;->delete()V

    .line 333
    .end local v7    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_46
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 334
    new-instance v0, Lcom/bitmapfun/util/DiskLruCache;

    .end local v0    # "cache":Lcom/bitmapfun/util/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bitmapfun/util/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 335
    .restart local v0    # "cache":Lcom/bitmapfun/util/DiskLruCache;
    invoke-direct {v0}, Lcom/bitmapfun/util/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    .line 336
    .restart local v6    # "cache":Ljava/lang/Object;
    goto :goto_41
.end method

.method private processJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/bitmapfun/util/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 405
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bitmapfun/util/DiskLruCache$Entry;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 420
    return-void

    .line 406
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/DiskLruCache$Entry;

    .line 407
    .local v0, "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$0(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_35

    .line 408
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_23
    iget v3, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_f

    .line 409
    iget-wide v4, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$7(Lcom/bitmapfun/util/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 412
    .end local v2    # "t":I
    :cond_35
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$5(Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$Editor;)V

    .line 413
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_3a
    iget v3, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    if-lt v2, v3, :cond_42

    .line 417
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 414
    :cond_42
    invoke-virtual {v0, v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/bitmapfun/util/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 415
    invoke-virtual {v0, v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/bitmapfun/util/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 221
    .local v0, "c":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_14

    .line 222
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 223
    :cond_14
    const/16 v3, 0xa

    if-ne v0, v3, :cond_32

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 230
    .local v1, "length":I
    if-lez v1, :cond_2d

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2d

    .line 231
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 233
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 227
    .end local v1    # "length":I
    :cond_32
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 197
    .local v2, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 199
    .local v0, "buffer":[C
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_18

    .line 202
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_1d

    move-result-object v3

    .line 204
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 202
    return-object v3

    .line 200
    :cond_18
    const/4 v3, 0x0

    :try_start_19
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_9

    .line 203
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catchall_1d
    move-exception v3

    .line 204
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 205
    throw v3
.end method

.method private readJournal()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/bitmapfun/util/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x2000

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 342
    .local v2, "in":Ljava/io/InputStream;
    :try_start_e
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "magic":Ljava/lang/String;
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "version":Ljava/lang/String;
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "valueCountString":Ljava/lang/String;
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "blank":Ljava/lang/String;
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 348
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 349
    iget v6, p0, Lcom/bitmapfun/util/DiskLruCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 350
    iget v6, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 351
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_90

    .line 352
    :cond_52
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 352
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_8b
    .catchall {:try_start_e .. :try_end_8b} :catchall_8b

    .line 363
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v4    # "valueCountString":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :catchall_8b
    move-exception v6

    .line 364
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 365
    throw v6

    .line 358
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v4    # "valueCountString":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_90
    :goto_90
    :try_start_90
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/bitmapfun/util/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/io/EOFException; {:try_start_90 .. :try_end_97} :catch_98
    .catchall {:try_start_90 .. :try_end_97} :catchall_8b

    goto :goto_90

    .line 359
    :catch_98
    move-exception v6

    .line 364
    invoke-static {v2}, Lcom/bitmapfun/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 366
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 11
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 369
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_22

    .line 371
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_22
    aget-object v1, v2, v8

    .line 375
    .local v1, "key":Ljava/lang/String;
    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    array-length v3, v2

    if-ne v3, v5, :cond_37

    .line 376
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_36
    :goto_36
    return-void

    .line 380
    :cond_37
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/DiskLruCache$Entry;

    .line 381
    .local v0, "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    if-nez v0, :cond_4b

    .line 382
    new-instance v0, Lcom/bitmapfun/util/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1, v7}, Lcom/bitmapfun/util/DiskLruCache$Entry;-><init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;Lcom/bitmapfun/util/DiskLruCache$Entry;)V

    .line 383
    .restart local v0    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_4b
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    array-length v3, v2

    iget v4, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_6d

    .line 387
    invoke-static {v0, v8}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$4(Lcom/bitmapfun/util/DiskLruCache$Entry;Z)V

    .line 388
    invoke-static {v0, v7}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$5(Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$Editor;)V

    .line 389
    array-length v3, v2

    invoke-static {v2, v5, v3}, Lcom/bitmapfun/util/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    # invokes: Lcom/bitmapfun/util/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$6(Lcom/bitmapfun/util/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_36

    .line 390
    :cond_6d
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    array-length v3, v2

    if-ne v3, v5, :cond_83

    .line 391
    new-instance v3, Lcom/bitmapfun/util/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Lcom/bitmapfun/util/DiskLruCache$Editor;-><init>(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$Editor;)V

    invoke-static {v0, v3}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$5(Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$Editor;)V

    goto :goto_36

    .line 392
    :cond_83
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    array-length v3, v2

    if-eq v3, v5, :cond_36

    .line 395
    :cond_90
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_a

    .line 428
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 431
    :cond_a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 432
    .local v1, "writer":Ljava/io/Writer;
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 433
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    iget v2, p0, Lcom/bitmapfun/util/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget v2, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7a

    .line 450
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 451
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 452
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/bitmapfun/util/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_a3

    .line 453
    monitor-exit p0

    return-void

    .line 442
    :cond_7a
    :try_start_7a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/DiskLruCache$Entry;

    .line 443
    .local v0, "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$0(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_a6

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$2(Lcom/bitmapfun/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_7a .. :try_end_a2} :catchall_a3

    goto :goto_57

    .line 427
    .end local v0    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_a3
    move-exception v2

    monitor-exit p0

    throw v2

    .line 446
    .restart local v0    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_a6
    :try_start_a6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$2(Lcom/bitmapfun/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_a6 .. :try_end_ca} :catchall_a3

    goto :goto_57
.end method

.method private trimToSize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    :goto_0
    iget-wide v2, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/bitmapfun/util/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_9

    .line 704
    return-void

    .line 701
    :cond_9
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 702
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bitmapfun/util/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bitmapfun/util/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 717
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 718
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_33
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-nez v1, :cond_7

    .line 696
    :goto_5
    monitor-exit p0

    return-void

    .line 688
    :cond_7
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 693
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->trimToSize()V

    .line 694
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 695
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    goto :goto_5

    .line 685
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1

    .line 688
    :cond_2b
    :try_start_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/DiskLruCache$Entry;

    .line 689
    .local v0, "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$0(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 690
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$0(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bitmapfun/util/DiskLruCache$Editor;->abort()V
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_28

    goto :goto_16
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/bitmapfun/util/DiskLruCache;->close()V

    .line 713
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 714
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bitmapfun/util/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->checkNotClosed()V

    .line 677
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->trimToSize()V

    .line 678
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 679
    monitor-exit p0

    return-void

    .line 676
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/bitmapfun/util/DiskLruCache$Snapshot;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 474
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->checkNotClosed()V

    .line 475
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bitmapfun/util/DiskLruCache$Entry;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_5d

    .line 477
    .local v8, "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    if-nez v8, :cond_14

    .line 506
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v1

    .line 481
    :cond_14
    :try_start_14
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v8}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$1(Lcom/bitmapfun/util/DiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 490
    iget v2, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    new-array v6, v2, [Ljava/io/InputStream;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_5d

    .line 492
    .local v6, "ins":[Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1f
    :try_start_1f
    iget v2, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_21} :catch_6e
    .catchall {:try_start_1f .. :try_end_21} :catchall_5d

    if-lt v9, v2, :cond_60

    .line 500
    :try_start_23
    iget v1, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    .line 501
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 502
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 503
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 506
    :cond_50
    new-instance v1, Lcom/bitmapfun/util/DiskLruCache$Snapshot;

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v8}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$8(Lcom/bitmapfun/util/DiskLruCache$Entry;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;-><init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/bitmapfun/util/DiskLruCache$Snapshot;)V
    :try_end_5c
    .catchall {:try_start_23 .. :try_end_5c} :catchall_5d

    goto :goto_12

    .line 474
    .end local v6    # "ins":[Ljava/io/InputStream;
    .end local v8    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    .end local v9    # "i":I
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 493
    .restart local v6    # "ins":[Ljava/io/InputStream;
    .restart local v8    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    .restart local v9    # "i":I
    :cond_60
    :try_start_60
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v6, v9
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_6b} :catch_6e
    .catchall {:try_start_60 .. :try_end_6b} :catchall_5d

    .line 492
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 495
    :catch_6e
    move-exception v0

    .line 497
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_12
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public maxSize()J
    .registers 3

    .prologue
    .line 553
    iget-wide v0, p0, Lcom/bitmapfun/util/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->checkNotClosed()V

    .line 633
    invoke-direct {p0, p1}, Lcom/bitmapfun/util/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 634
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bitmapfun/util/DiskLruCache$Entry;

    .line 635
    .local v0, "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    if-eqz v0, :cond_17

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$0(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_72

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 636
    :cond_17
    const/4 v3, 0x0

    .line 656
    :goto_18
    monitor-exit p0

    return v3

    .line 639
    :cond_1a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    :try_start_1b
    iget v3, p0, Lcom/bitmapfun/util/DiskLruCache;->valueCount:I

    if-lt v2, v3, :cond_53

    .line 648
    iget v3, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bitmapfun/util/DiskLruCache;->redundantOpCount:I

    .line 649
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "REMOVE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 650
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-direct {p0}, Lcom/bitmapfun/util/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 653
    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/bitmapfun/util/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 656
    :cond_51
    const/4 v3, 0x1

    goto :goto_18

    .line 640
    :cond_53
    invoke-virtual {v0, v2}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 641
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_75

    .line 642
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_72
    .catchall {:try_start_1b .. :try_end_72} :catchall_72

    .line 632
    .end local v0    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_72
    move-exception v3

    monitor-exit p0

    throw v3

    .line 644
    .restart local v0    # "entry":Lcom/bitmapfun/util/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_75
    :try_start_75
    iget-wide v4, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$7(Lcom/bitmapfun/util/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J

    .line 645
    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$7(Lcom/bitmapfun/util/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_72

    .line 639
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b
.end method

.method public declared-synchronized size()J
    .registers 3

    .prologue
    .line 562
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/bitmapfun/util/DiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
