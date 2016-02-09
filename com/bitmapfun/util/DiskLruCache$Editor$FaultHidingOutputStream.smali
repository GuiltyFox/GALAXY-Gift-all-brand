.class Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bitmapfun/util/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/bitmapfun/util/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .registers 3
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/bitmapfun/util/DiskLruCache$Editor;

    .line 859
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 860
    return-void
.end method

.method synthetic constructor <init>(Lcom/bitmapfun/util/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;)V
    .registers 4

    .prologue
    .line 858
    invoke-direct {p0, p1, p2}, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/bitmapfun/util/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 884
    :goto_5
    return-void

    .line 881
    :catch_6
    move-exception v0

    .line 882
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/bitmapfun/util/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bitmapfun/util/DiskLruCache$Editor;->access$0(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V

    goto :goto_5
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 892
    :goto_5
    return-void

    .line 889
    :catch_6
    move-exception v0

    .line 890
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/bitmapfun/util/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bitmapfun/util/DiskLruCache$Editor;->access$0(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V

    goto :goto_5
.end method

.method public write(I)V
    .registers 5
    .param p1, "oneByte"    # I

    .prologue
    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 868
    :goto_5
    return-void

    .line 865
    :catch_6
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/bitmapfun/util/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bitmapfun/util/DiskLruCache$Editor;->access$0(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V

    goto :goto_5
.end method

.method public write([BII)V
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 872
    :try_start_0
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 876
    :goto_5
    return-void

    .line 873
    :catch_6
    move-exception v0

    .line 874
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/bitmapfun/util/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bitmapfun/util/DiskLruCache$Editor;->access$0(Lcom/bitmapfun/util/DiskLruCache$Editor;Z)V

    goto :goto_5
.end method
