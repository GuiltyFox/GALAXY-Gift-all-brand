.class final Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
.super Ljava/lang/Object;
.source "LazyHeaders.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/LazyHeaderFactory;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->a:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 251
    instance-of v0, p1, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    if-eqz v0, :cond_f

    .line 252
    check-cast p1, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    .line 253
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 255
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StringHeaderFactory{value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
