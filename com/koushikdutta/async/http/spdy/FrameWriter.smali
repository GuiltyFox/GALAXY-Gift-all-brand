.class interface abstract Lcom/koushikdutta/async/http/spdy/FrameWriter;
.super Ljava/lang/Object;
.source "FrameWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
.end method

.method public abstract a(Lcom/koushikdutta/async/http/spdy/Settings;)V
.end method

.method public abstract a(ZII)V
.end method

.method public abstract a(ZILcom/koushikdutta/async/ByteBufferList;)V
.end method

.method public abstract a(ZZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method
