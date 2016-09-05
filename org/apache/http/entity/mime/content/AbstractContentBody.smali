.class public abstract Lorg/apache/http/entity/mime/content/AbstractContentBody;
.super Ljava/lang/Object;
.source "AbstractContentBody.java"

# interfaces
.implements Lorg/apache/http/entity/mime/content/ContentBody;


# instance fields
.field private final a:Lorg/apache/http/entity/ContentType;


# direct methods
.method public constructor <init>(Lorg/apache/http/entity/ContentType;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, "Content type"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->a:Lorg/apache/http/entity/ContentType;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/entity/ContentType;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->a:Lorg/apache/http/entity/ContentType;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->a:Lorg/apache/http/entity/ContentType;

    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->a:Lorg/apache/http/entity/ContentType;

    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
