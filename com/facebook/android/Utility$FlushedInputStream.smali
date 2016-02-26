.class Lcom/facebook/android/Utility$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const-wide/16 v4, 0x0

    .line 67
    .local v4, "totalBytesSkipped":J
    :goto_2
    cmp-long v1, v4, p1

    if-ltz v1, :cond_7

    .line 79
    :cond_6
    return-wide v4

    .line 68
    :cond_7
    iget-object v1, p0, Lcom/facebook/android/Utility$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v4

    invoke-virtual {v1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 69
    .local v2, "bytesSkipped":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_1d

    .line 70
    invoke-virtual {p0}, Lcom/facebook/android/Utility$FlushedInputStream;->read()I

    move-result v0

    .line 71
    .local v0, "b":I
    if-ltz v0, :cond_6

    .line 74
    const-wide/16 v2, 0x1

    .line 77
    .end local v0    # "b":I
    :cond_1d
    add-long/2addr v4, v2

    goto :goto_2
.end method
