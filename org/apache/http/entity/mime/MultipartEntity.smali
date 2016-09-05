.class public Lorg/apache/http/entity/mime/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

.field private volatile c:Lorg/apache/http/entity/mime/MultipartFormEntity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/MultipartEntity;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->a:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-direct {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a(Lorg/apache/http/entity/mime/HttpMultipartMode;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a(Ljava/lang/String;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->b:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/MultipartFormEntity;

    .line 76
    return-void
.end method

.method private a()Lorg/apache/http/entity/mime/MultipartFormEntity;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/MultipartFormEntity;

    if-nez v0, :cond_c

    .line 119
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->b:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/MultipartFormEntity;

    .line 121
    :cond_c
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/MultipartFormEntity;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 4

    .prologue
    .line 130
    new-instance v0, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->a(Lorg/apache/http/entity/mime/FormBodyPart;)V

    .line 131
    return-void
.end method

.method public a(Lorg/apache/http/entity/mime/FormBodyPart;)V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->b:Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->a(Lorg/apache/http/entity/mime/FormBodyPart;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->c:Lorg/apache/http/entity/mime/MultipartFormEntity;

    .line 127
    return-void
.end method

.method public consumeContent()V
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_f
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 154
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->a()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->a()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->a()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->a()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->a()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->a()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/MultipartFormEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->a()Lorg/apache/http/entity/mime/MultipartFormEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/MultipartFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 172
    return-void
.end method
