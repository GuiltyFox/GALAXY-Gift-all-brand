.class public interface abstract Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
.super Ljava/lang/Object;
.source "FrameReader.java"


# virtual methods
.method public abstract a(IIIZ)V
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

.method public abstract a(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(ZII)V
.end method

.method public abstract a(ZILcom/koushikdutta/async/ByteBufferList;)V
.end method

.method public abstract a(ZLcom/koushikdutta/async/http/spdy/Settings;)V
.end method

.method public abstract a(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;",
            "Lcom/koushikdutta/async/http/spdy/HeadersMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method
