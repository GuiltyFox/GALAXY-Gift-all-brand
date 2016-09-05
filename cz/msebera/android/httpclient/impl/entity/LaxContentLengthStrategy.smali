.class public Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;->a:Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;->b:I

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpMessage;)J
    .registers 8

    .prologue
    const-wide/16 v0, -0x1

    .line 79
    const-string/jumbo v2, "HTTP message"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v2, "Transfer-Encoding"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_55

    .line 87
    :try_start_11
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->e()[Lcz/msebera/android/httpclient/HeaderElement;
    :try_end_14
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_11 .. :try_end_14} :catch_24

    move-result-object v3

    .line 94
    array-length v4, v3

    .line 95
    const-string/jumbo v5, "identity"

    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 123
    :cond_23
    :goto_23
    return-wide v0

    .line 88
    :catch_24
    move-exception v0

    .line 89
    new-instance v1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid Transfer-Encoding header value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :cond_3f
    if-lez v4, :cond_23

    const-string/jumbo v2, "chunked"

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    .line 98
    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 99
    const-wide/16 v0, -0x2

    goto :goto_23

    .line 104
    :cond_55
    const-string/jumbo v2, "Content-Length"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_80

    .line 107
    const-string/jumbo v2, "Content-Length"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    .line 108
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_68
    if-ltz v2, :cond_84

    .line 109
    aget-object v4, v3, v2

    .line 111
    :try_start_6c
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_73} :catch_7c

    move-result-wide v2

    .line 117
    :goto_74
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_23

    move-wide v0, v2

    .line 118
    goto :goto_23

    .line 113
    :catch_7c
    move-exception v4

    .line 108
    add-int/lit8 v2, v2, -0x1

    goto :goto_68

    .line 123
    :cond_80
    iget v0, p0, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;->b:I

    int-to-long v0, v0

    goto :goto_23

    :cond_84
    move-wide v2, v0

    goto :goto_74
.end method
