.class public final Lcom/bitmapfun/util/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/bitmapfun/util/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .registers 7
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 737
    iput-wide p3, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 738
    iput-object p5, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/bitmapfun/util/DiskLruCache$Snapshot;)V
    .registers 8

    .prologue
    .line 735
    invoke-direct/range {p0 .. p5}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;-><init>(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 765
    iget-object v2, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v3, :cond_7

    .line 768
    return-void

    .line 765
    :cond_7
    aget-object v0, v2, v1

    .line 766
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public edit()Lcom/bitmapfun/util/DiskLruCache$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->this$0:Lcom/bitmapfun/util/DiskLruCache;

    iget-object v1, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->sequenceNumber:J

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/bitmapfun/util/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/bitmapfun/util/DiskLruCache;->access$5(Lcom/bitmapfun/util/DiskLruCache;Ljava/lang/String;J)Lcom/bitmapfun/util/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    # invokes: Lcom/bitmapfun/util/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/bitmapfun/util/DiskLruCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
