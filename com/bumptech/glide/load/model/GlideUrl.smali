.class public Lcom/bumptech/glide/load/model/GlideUrl;
.super Ljava/lang/Object;
.source "GlideUrl.java"


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Lcom/bumptech/glide/load/model/Headers;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lcom/bumptech/glide/load/model/Headers;->b:Lcom/bumptech/glide/load/model/Headers;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V
    .registers 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String url must not be empty or null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_23
    if-nez p2, :cond_2e

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Headers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2e
    iput-object p1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->c:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->a:Ljava/net/URL;

    .line 61
    iput-object p2, p0, Lcom/bumptech/glide/load/model/GlideUrl;->b:Lcom/bumptech/glide/load/model/Headers;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/bumptech/glide/load/model/Headers;->b:Lcom/bumptech/glide/load/model/Headers;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/Headers;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/bumptech/glide/load/model/Headers;)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_e

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URL must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_e
    if-nez p2, :cond_19

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Headers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_19
    iput-object p1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->a:Ljava/net/URL;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->c:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/model/GlideUrl;->b:Lcom/bumptech/glide/load/model/Headers;

    .line 50
    return-void
.end method

.method private d()Ljava/net/URL;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->e:Ljava/net/URL;

    if-nez v0, :cond_f

    .line 80
    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->e:Ljava/net/URL;

    .line 82
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->e:Ljava/net/URL;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->c:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_16
    const-string/jumbo v1, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->d:Ljava/lang/String;

    .line 103
    :cond_1f
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/net/URL;
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->d()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->b:Lcom/bumptech/glide/load/model/Headers;

    invoke-interface {v0}, Lcom/bumptech/glide/load/model/Headers;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->c:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GlideUrl;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 131
    instance-of v1, p1, Lcom/bumptech/glide/load/model/GlideUrl;

    if-eqz v1, :cond_20

    .line 132
    check-cast p1, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 133
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/GlideUrl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->b:Lcom/bumptech/glide/load/model/Headers;

    iget-object v2, p1, Lcom/bumptech/glide/load/model/GlideUrl;->b:Lcom/bumptech/glide/load/model/Headers;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    .line 136
    :cond_20
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->b:Lcom/bumptech/glide/load/model/Headers;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/GlideUrl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/GlideUrl;->b:Lcom/bumptech/glide/load/model/Headers;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
