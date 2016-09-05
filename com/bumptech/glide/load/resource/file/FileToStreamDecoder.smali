.class public Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;


# instance fields
.field private b:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->a:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->a:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->b:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->c:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->c:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->b:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    move-result-object v0

    .line 41
    if-eqz v1, :cond_12

    .line 43
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_1a

    .line 49
    :cond_12
    :goto_12
    return-object v0

    .line 41
    :catchall_13
    move-exception v0

    if-eqz v1, :cond_19

    .line 43
    :try_start_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1c

    .line 46
    :cond_19
    :goto_19
    throw v0

    .line 44
    :catch_1a
    move-exception v1

    goto :goto_12

    :catch_1c
    move-exception v1

    goto :goto_19
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5

    .prologue
    .line 17
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->a(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string/jumbo v0, ""

    return-object v0
.end method
