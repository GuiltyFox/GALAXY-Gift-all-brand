.class Lcom/loopj/android/http/SimpleMultipartEntity;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# static fields
.field private static final CR_LF:[B

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleMultipartEntity"

.field private static final MULTIPART_CHARS:[C

.field private static final STR_CR_LF:Ljava/lang/String; = "\r\n"

.field private static final TRANSFER_ENCODING_BINARY:[B


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final boundaryEnd:[B

.field private final boundaryLine:[B

.field private bytesWritten:J

.field private final fileParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;",
            ">;"
        }
    .end annotation
.end field

.field private isRepeatable:Z

.field private final out:Ljava/io/ByteArrayOutputStream;

.field private final progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

.field private totalSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    .line 52
    const-string/jumbo v0, "Content-Transfer-Encoding: binary\r\n"

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    .line 55
    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/ResponseHandlerInterface;)V
    .registers 7

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 74
    const/4 v0, 0x0

    :goto_1c
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_31

    .line 75
    sget-object v3, Lcom/loopj/android/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    sget-object v4, Lcom/loopj/android/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 78
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryEnd:[B

    .line 82
    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/loopj/android/http/SimpleMultipartEntity;)[B
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/loopj/android/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/loopj/android/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[B
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/loopj/android/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/loopj/android/http/SimpleMultipartEntity;J)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/loopj/android/http/SimpleMultipartEntity;->updateProgress(J)V

    return-void
.end method

.method private createContentDisposition(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private createContentType(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/loopj/android/http/SimpleMultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private normalizeContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    if-nez p1, :cond_5

    const-string/jumbo p1, "application/octet-stream"

    :cond_5
    return-object p1
.end method

.method private updateProgress(J)V
    .registers 10

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->bytesWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->bytesWritten:J

    .line 166
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    iget-wide v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->bytesWritten:J

    iget-wide v4, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->totalSize:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendProgressMessage(JJ)V

    .line 167
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 113
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    new-instance v1, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;

    invoke-direct {p0, p3}, Lcom/loopj/android/http/SimpleMultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;-><init>(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 117
    iget-object v6, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    new-instance v0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;

    invoke-direct {p0, p3}, Lcom/loopj/android/http/SimpleMultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;-><init>(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 123
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 126
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, p2}, Lcom/loopj/android/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 127
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p4}, Lcom/loopj/android/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 128
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/loopj/android/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 134
    :goto_2b
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 135
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2b

    .line 138
    :cond_39
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 140
    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 88
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1}, Lcom/loopj/android/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 89
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p3}, Lcom/loopj/android/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 90
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 91
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/loopj/android/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    .line 97
    :goto_30
    return-void

    .line 93
    :catch_31
    move-exception v0

    .line 95
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "SimpleMultipartEntity"

    const-string/jumbo v3, "addPart ByteArrayOutputStream exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method public addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 100
    if-nez p3, :cond_5

    const-string/jumbo p3, "UTF-8"

    .line 101
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "text/plain; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public consumeContent()V
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/loopj/android/http/SimpleMultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_f
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getContent() is not supported. Use writeTo() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 9

    .prologue
    .line 171
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    .line 172
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;

    .line 173
    invoke-virtual {v0}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->getTotalLength()J

    move-result-wide v0

    .line 174
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_27

    .line 175
    const-wide/16 v0, -0x1

    .line 180
    :goto_26
    return-wide v0

    .line 177
    :cond_27
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 178
    goto :goto_e

    .line 179
    :cond_2a
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 180
    goto :goto_26
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .registers 5

    .prologue
    .line 187
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string/jumbo v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "multipart/form-data; boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->isRepeatable:Z

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public setIsRepeatable(Z)V
    .registers 2

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->isRepeatable:Z

    .line 199
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->bytesWritten:J

    .line 214
    invoke-virtual {p0}, Lcom/loopj/android/http/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->totalSize:J

    .line 215
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 216
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/SimpleMultipartEntity;->updateProgress(J)V

    .line 218
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;

    .line 219
    invoke-virtual {v0, p1}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_21

    .line 221
    :cond_31
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryEnd:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 222
    iget-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/SimpleMultipartEntity;->updateProgress(J)V

    .line 223
    return-void
.end method
