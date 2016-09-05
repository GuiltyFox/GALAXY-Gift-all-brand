.class Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;
.super Lorg/apache/http/entity/mime/AbstractMultipartForm;
.source "HttpBrowserCompatibleMultipart.java"


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
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/AbstractMultipartForm;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 51
    iput-object p4, p0, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->b:Ljava/util/List;

    .line 52
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
    .line 56
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->b:Ljava/util/List;

    return-object v0
.end method

.method protected a(Lorg/apache/http/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/apache/http/entity/mime/FormBodyPart;->c()Lorg/apache/http/entity/mime/Header;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/Header;->a(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->a:Ljava/nio/charset/Charset;

    invoke-static {v1, v2, p2}, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->a(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {p1}, Lorg/apache/http/entity/mime/FormBodyPart;->b()Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/entity/mime/content/ContentBody;->d()Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_26

    .line 73
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/Header;->a(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, p2}, Lorg/apache/http/entity/mime/HttpBrowserCompatibleMultipart;->a(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 77
    :cond_26
    return-void
.end method
