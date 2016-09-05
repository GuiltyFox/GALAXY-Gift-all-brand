.class public final Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private final b:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)V
    .registers 4

    .prologue
    .line 727
    iput-object p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 729
    invoke-static {p2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->d(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->c:[Z

    .line 730
    return-void

    .line 729
    :cond_11
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->e(Lcom/jakewharton/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V
    .registers 4

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)Z
    .registers 2

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)[Z
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .registers 6

    .prologue
    .line 769
    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    monitor-enter v2

    .line 770
    :try_start_3
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 791
    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 773
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->d(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 774
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 776
    :cond_21
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->b(I)Ljava/io/File;
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    move-result-object v1

    .line 779
    :try_start_27
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2c} :catch_35
    .catchall {:try_start_27 .. :try_end_2c} :catchall_11

    move-object v1, v0

    .line 790
    :goto_2d
    :try_start_2d
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    monitor-exit v2

    :goto_34
    return-object v0

    .line 780
    :catch_35
    move-exception v0

    .line 782
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->f(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_11

    .line 784
    :try_start_3f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_44} :catch_46
    .catchall {:try_start_3f .. :try_end_44} :catchall_11

    move-object v1, v0

    .line 788
    goto :goto_2d

    .line 785
    :catch_46
    move-exception v0

    .line 787
    :try_start_47
    invoke-static {}, Lcom/jakewharton/disklrucache/DiskLruCache;->c()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_11

    goto :goto_34
.end method

.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 810
    iget-boolean v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->d:Z

    if-eqz v0, :cond_19

    .line 811
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V

    .line 812
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->b:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->c(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->c(Ljava/lang/String;)Z

    .line 816
    :goto_16
    iput-boolean v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->e:Z

    .line 817
    return-void

    .line 814
    :cond_19
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V

    goto :goto_16
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 796
    const/4 v2, 0x0

    .line 798
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v3, Lcom/jakewharton/disklrucache/Util;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 799
    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_19

    .line 801
    invoke-static {v1}, Lcom/jakewharton/disklrucache/Util;->a(Ljava/io/Closeable;)V

    .line 803
    return-void

    .line 801
    :catchall_13
    move-exception v0

    move-object v1, v2

    :goto_15
    invoke-static {v1}, Lcom/jakewharton/disklrucache/Util;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_15
.end method

.method public b()V
    .registers 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a:Lcom/jakewharton/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->a(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V

    .line 825
    return-void
.end method
