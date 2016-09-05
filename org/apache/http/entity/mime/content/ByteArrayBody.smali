.class public Lorg/apache/http/entity/mime/content/ByteArrayBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "ByteArrayBody.java"


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    invoke-static {p2}, Lorg/apache/http/entity/ContentType;->a(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLorg/apache/http/entity/ContentType;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>([BLorg/apache/http/entity/ContentType;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 74
    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Lorg/apache/http/entity/ContentType;)V

    .line 75
    const-string/jumbo v0, "byte[]"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/ByteArrayBody;->a:[B

    .line 77
    iput-object p3, p0, Lorg/apache/http/entity/mime/content/ByteArrayBody;->b:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/ByteArrayBody;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 96
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/ByteArrayBody;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string/jumbo v0, "binary"

    return-object v0
.end method

.method public f()J
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/ByteArrayBody;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
