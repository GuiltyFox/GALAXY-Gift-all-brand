.class public Lorg/apache/http/entity/mime/content/StringBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "StringBody.java"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    const-string/jumbo v0, "text/plain"

    sget-object v1, Lorg/apache/http/Consts;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    invoke-static {p2, p3}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Lorg/apache/http/entity/ContentType;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/entity/ContentType;)V
    .registers 5

    .prologue
    .line 155
    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Lorg/apache/http/entity/ContentType;)V

    .line 156
    const-string/jumbo v0, "Text"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p2}, Lorg/apache/http/entity/ContentType;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_13
    :try_start_13
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/entity/mime/content/StringBody;->a:[B
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_19} :catch_21

    .line 165
    return-void

    .line 158
    :cond_1a
    sget-object v0, Lorg/apache/http/Consts;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 161
    :catch_21
    move-exception v1

    .line 163
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-direct {v1, v0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 175
    const-string/jumbo v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/mime/content/StringBody;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 177
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 179
    :goto_11
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    .line 180
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_11

    .line 182
    :cond_1d
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 183
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    const-string/jumbo v0, "8bit"

    return-object v0
.end method

.method public f()J
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/StringBody;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
