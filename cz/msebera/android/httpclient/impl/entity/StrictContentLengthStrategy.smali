.class public Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;
.super Ljava/lang/Object;
.source "StrictContentLengthStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;->a:Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;->b:I

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpMessage;)J
    .registers 8

    .prologue
    .line 79
    const-string/jumbo v0, "HTTP message"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_6f

    .line 85
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 87
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpMessage;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->b:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->c(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 88
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Chunked transfer encoding not allowed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpMessage;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_46
    const-wide/16 v0, -0x2

    .line 113
    :cond_48
    :goto_48
    return-wide v0

    .line 93
    :cond_49
    const-string/jumbo v1, "identity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 94
    const-wide/16 v0, -0x1

    goto :goto_48

    .line 96
    :cond_55
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported transfer encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_6f
    const-string/jumbo v0, "Content-Length"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_bb

    .line 102
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v2

    .line 104
    :try_start_7c
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 105
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_48

    .line 106
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Negative content length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_a0} :catch_a0

    .line 109
    :catch_a0
    move-exception v0

    .line 110
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid content length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_bb
    iget v0, p0, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;->b:I

    int-to-long v0, v0

    goto :goto_48
.end method
