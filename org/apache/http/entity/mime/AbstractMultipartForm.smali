.class abstract Lorg/apache/http/entity/mime/AbstractMultipartForm;
.super Ljava/lang/Object;
.source "AbstractMultipartForm.java"


# static fields
.field private static final b:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final c:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final d:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field protected final a:Ljava/nio/charset/Charset;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 92
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    const-string/jumbo v1, ": "

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->b:Lorg/apache/http/util/ByteArrayBuffer;

    .line 93
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    const-string/jumbo v1, "\r\n"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->c:Lorg/apache/http/util/ByteArrayBuffer;

    .line 94
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    const-string/jumbo v1, "--"

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->d:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string/jumbo v0, "Multipart subtype"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v0, "Multipart boundary"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->e:Ljava/lang/String;

    .line 113
    if-eqz p2, :cond_18

    :goto_13
    iput-object p2, p0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a:Ljava/nio/charset/Charset;

    .line 114
    iput-object p3, p0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->f:Ljava/lang/String;

    .line 115
    return-void

    .line 113
    :cond_18
    sget-object p2, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    goto :goto_13
.end method

.method private static a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .registers 6

    .prologue
    .line 53
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 56
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 72
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 73
    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 74
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 66
    invoke-static {p1, p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 67
    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 68
    return-void
.end method

.method protected static a(Lorg/apache/http/entity/mime/MinimalField;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 79
    sget-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 81
    sget-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 82
    return-void
.end method

.method protected static a(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 87
    sget-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 88
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 89
    sget-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 90
    return-void
.end method

.method private static a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .registers 5

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/io/OutputStream;Z)V

    .line 174
    return-void
.end method

.method a(Ljava/io/OutputStream;Z)V
    .registers 7

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/FormBodyPart;

    .line 141
    sget-object v3, Lorg/apache/http/entity/mime/AbstractMultipartForm;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 142
    invoke-static {v1, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 143
    sget-object v3, Lorg/apache/http/entity/mime/AbstractMultipartForm;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 145
    invoke-virtual {p0, v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V

    .line 147
    sget-object v3, Lorg/apache/http/entity/mime/AbstractMultipartForm;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 149
    if-eqz p2, :cond_3c

    .line 150
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/FormBodyPart;->b()Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/entity/mime/content/ContentBody;->a(Ljava/io/OutputStream;)V

    .line 152
    :cond_3c
    sget-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_12

    .line 154
    :cond_42
    sget-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 155
    invoke-static {v1, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 156
    sget-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 157
    sget-object v0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 158
    return-void
.end method

.method protected abstract a(Lorg/apache/http/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/http/entity/mime/AbstractMultipartForm;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    .line 190
    .line 191
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/FormBodyPart;

    .line 192
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/FormBodyPart;->b()Lorg/apache/http/entity/mime/content/ContentBody;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lorg/apache/http/entity/mime/content/ContentBody;->f()J

    move-result-wide v0

    .line 194
    cmp-long v9, v0, v4

    if-ltz v9, :cond_28

    .line 195
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 199
    goto :goto_d

    :cond_28
    move-wide v0, v6

    .line 207
    :goto_29
    return-wide v0

    .line 200
    :cond_2a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    const/4 v1, 0x0

    :try_start_30
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/entity/mime/AbstractMultipartForm;->a(Ljava/io/OutputStream;Z)V

    .line 203
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 204
    array-length v0, v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_3b

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_29

    .line 205
    :catch_3b
    move-exception v0

    move-wide v0, v6

    .line 207
    goto :goto_29
.end method
