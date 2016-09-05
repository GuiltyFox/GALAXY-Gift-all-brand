.class Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/DecodeJob;

.field private final b:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;TDataType;)V"
        }
    .end annotation

    .prologue
    .line 259
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->b:Lcom/bumptech/glide/load/Encoder;

    .line 261
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->c:Ljava/lang/Object;

    .line 262
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .registers 7

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    const/4 v2, 0x0

    .line 269
    :try_start_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->a:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;->a(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    .line 270
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->b:Lcom/bumptech/glide/load/Encoder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->c:Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/bumptech/glide/load/Encoder;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_1a
    .catchall {:try_start_2 .. :try_end_13} :catchall_36

    move-result v0

    .line 276
    if-eqz v2, :cond_19

    .line 278
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_3d

    .line 284
    :cond_19
    :goto_19
    return v0

    .line 271
    :catch_1a
    move-exception v1

    .line 272
    :try_start_1b
    const-string/jumbo v3, "DecodeJob"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 273
    const-string/jumbo v3, "DecodeJob"

    const-string/jumbo v4, "Failed to find file to write to disk cache"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_36

    .line 276
    :cond_2e
    if-eqz v2, :cond_19

    .line 278
    :try_start_30
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_19

    .line 279
    :catch_34
    move-exception v1

    goto :goto_19

    .line 276
    :catchall_36
    move-exception v0

    if-eqz v2, :cond_3c

    .line 278
    :try_start_39
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3f

    .line 281
    :cond_3c
    :goto_3c
    throw v0

    .line 279
    :catch_3d
    move-exception v1

    goto :goto_19

    :catch_3f
    move-exception v1

    goto :goto_3c
.end method
