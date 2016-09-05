.class public Lcom/bumptech/glide/provider/ChildLoadProvider;
.super Ljava/lang/Object;
.source "ChildLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/LoadProvider;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/LoadProvider",
        "<TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation
.end field

.field private f:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->a:Lcom/bumptech/glide/provider/LoadProvider;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->b:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_7

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->b:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 93
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->a:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->a()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    goto :goto_6
.end method

.method public a(Lcom/bumptech/glide/load/Encoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->f:Lcom/bumptech/glide/load/Encoder;

    .line 83
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->c:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 54
    return-void
.end method

.method public b()Lcom/bumptech/glide/load/ResourceDecoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->c:Lcom/bumptech/glide/load/ResourceDecoder;

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->c:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 105
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->a:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->b()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    goto :goto_6
.end method

.method public c()Lcom/bumptech/glide/load/Encoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->f:Lcom/bumptech/glide/load/Encoder;

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->f:Lcom/bumptech/glide/load/Encoder;

    .line 117
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->a:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->c()Lcom/bumptech/glide/load/Encoder;

    move-result-object v0

    goto :goto_6
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/bumptech/glide/provider/ChildLoadProvider;->g()Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/ResourceEncoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->d:Lcom/bumptech/glide/load/ResourceEncoder;

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->d:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 129
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->a:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->d()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    goto :goto_6
.end method

.method public e()Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->a:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->e()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->e:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_7

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->e:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 141
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/provider/ChildLoadProvider;->a:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->f()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    goto :goto_6
.end method

.method public g()Lcom/bumptech/glide/provider/ChildLoadProvider;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/provider/ChildLoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 150
    :catch_7
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
