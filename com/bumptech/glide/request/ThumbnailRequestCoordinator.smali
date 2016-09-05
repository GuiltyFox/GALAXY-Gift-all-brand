.class public Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/RequestCoordinator;


# instance fields
.field private a:Lcom/bumptech/glide/request/Request;

.field private b:Lcom/bumptech/glide/request/Request;

.field private c:Lcom/bumptech/glide/request/RequestCoordinator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 18
    return-void
.end method

.method private j()Z
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->a(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private k()Z
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->b(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private l()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->a()V

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->a()V

    .line 155
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
    .registers 3

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    .line 23
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/Request;)Z
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->j()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->h()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->f()Z

    move-result v0

    if-nez v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->b()V

    .line 89
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->f()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->b()V

    .line 92
    :cond_1a
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/Request;)Z
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public c(Lcom/bumptech/glide/request/Request;)V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    :cond_8
    :goto_8
    return-void

    .line 66
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_12

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->c(Lcom/bumptech/glide/request/Request;)V

    .line 72
    :cond_12
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->g()Z

    move-result v0

    if-nez v0, :cond_8

    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->d()V

    goto :goto_8
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->l()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->d()V

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->d()V

    .line 107
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->e()V

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->e()V

    .line 98
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->g()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->h()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->b:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->i()Z

    move-result v0

    return v0
.end method
