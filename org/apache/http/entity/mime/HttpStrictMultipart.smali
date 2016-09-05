.class Lorg/apache/http/entity/mime/HttpStrictMultipart;
.super Lorg/apache/http/entity/mime/AbstractMultipartForm;
.source "HttpStrictMultipart.java"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/AbstractMultipartForm;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 52
    iput-object p4, p0, Lorg/apache/http/entity/mime/HttpStrictMultipart;->b:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpStrictMultipart;->b:Ljava/util/List;

    return-object v0
.end method

.method protected a(Lorg/apache/http/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .registers 5

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/apache/http/entity/mime/FormBodyPart;->c()Lorg/apache/http/entity/mime/Header;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/MinimalField;

    .line 68
    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpStrictMultipart;->a(Lorg/apache/http/entity/mime/MinimalField;Ljava/io/OutputStream;)V

    goto :goto_8

    .line 70
    :cond_18
    return-void
.end method
