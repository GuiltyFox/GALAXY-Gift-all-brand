.class Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 837
    iput-object p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 838
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 839
    return-void
.end method

.method synthetic constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V
    .registers 4

    .prologue
    .line 836
    invoke-direct {p0, p1, p2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 863
    :goto_5
    return-void

    .line 860
    :catch_6
    move-exception v0

    .line 861
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 871
    :goto_5
    return-void

    .line 868
    :catch_6
    move-exception v0

    .line 869
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public write(I)V
    .registers 4

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 847
    :goto_5
    return-void

    .line 844
    :catch_6
    move-exception v0

    .line 845
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method

.method public write([BII)V
    .registers 6

    .prologue
    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 855
    :goto_5
    return-void

    .line 852
    :catch_6
    move-exception v0

    .line 853
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->a:Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->a(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)Z

    goto :goto_5
.end method
