.class public interface abstract Lokhttp3/internal/framed/FrameWriter;
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
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILokhttp3/internal/framed/ErrorCode;)V
.end method

.method public abstract a(ILokhttp3/internal/framed/ErrorCode;[B)V
.end method

.method public abstract a(Lokhttp3/internal/framed/Settings;)V
.end method

.method public abstract a(ZII)V
.end method

.method public abstract a(ZILokio/Buffer;I)V
.end method

.method public abstract a(ZZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract b(Lokhttp3/internal/framed/Settings;)V
.end method

.method public abstract c()I
.end method
