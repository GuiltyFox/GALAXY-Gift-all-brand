.class public final Lcom/bitmapfun/util/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/bitmapfun/util/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Entry;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bitmapfun/util/DiskLruCache;
    .param p2, "entry"    # Lcom/bitmapfun/util/DiskLruCache$Entry;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p2, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

    .line 780
    return-void
.end method

.method synthetic constructor <init>(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Entry;Lcom/bitmapfun/util/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/bitmapfun/util/DiskLruCache;
    .param p2, "x1"    # Lcom/bitmapfun/util/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/bitmapfun/util/DiskLruCache$1;

    .prologue
    .line 774
    invoke-direct {p0, p1, p2}, Lcom/bitmapfun/util/DiskLruCache$Editor;-><init>(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/bitmapfun/util/DiskLruCache$Editor;)Lcom/bitmapfun/util/DiskLruCache$Entry;
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Editor;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bitmapfun/util/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->completeEdit(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/bitmapfun/util/DiskLruCache;->access$1900(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V

    .line 855
    return-void
.end method

.method public commit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_16

    .line 842
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->completeEdit(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/bitmapfun/util/DiskLruCache;->access$1900(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V

    .line 843
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$1100(Lcom/bitmapfun/util/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 847
    :goto_15
    return-void

    .line 845
    :cond_16
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    const/4 v1, 0x1

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->completeEdit(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/bitmapfun/util/DiskLruCache;->access$1900(Lcom/bitmapfun/util/DiskLruCache;Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V

    goto :goto_15
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 804
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_b

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    monitor-enter v1

    .line 788
    :try_start_3
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$700(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 795
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 791
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$600(Lcom/bitmapfun/util/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 792
    const/4 v0, 0x0

    monitor-exit v1

    .line 794
    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_11

    goto :goto_1e
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    monitor-enter v1

    .line 816
    :try_start_3
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

    # getter for: Lcom/bitmapfun/util/DiskLruCache$Entry;->currentEditor:Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache$Entry;->access$700(Lcom/bitmapfun/util/DiskLruCache$Entry;)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 820
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 819
    :cond_14
    :try_start_14
    new-instance v0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bitmapfun/util/DiskLruCache$Editor;->entry:Lcom/bitmapfun/util/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/bitmapfun/util/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/bitmapfun/util/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/bitmapfun/util/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    return-object v0
.end method

.method public set(ILjava/lang/String;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    # getter for: Lcom/bitmapfun/util/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;
    invoke-static {}, Lcom/bitmapfun/util/DiskLruCache;->access$1800()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_15

    .line 830
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_e
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1a

    .line 832
    invoke-static {v1}, Lcom/bitmapfun/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 834
    return-void

    .line 832
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_15
    move-exception v2

    :goto_16
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1a
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_16
.end method
