.class public Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/ConnectionReuseStrategy;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->a:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private a(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 4

    .prologue
    .line 182
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->b()I

    move-result v0

    .line 183
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1a

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x130

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/HeaderIterator;)Lcz/msebera/android/httpclient/TokenIterator;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-string/jumbo v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->a()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->a()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v3

    .line 81
    const-string/jumbo v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2d

    .line 83
    const-string/jumbo v4, "chunked"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 164
    :cond_2c
    :goto_2c
    return v2

    .line 87
    :cond_2d
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->a(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 88
    const-string/jumbo v0, "Content-Length"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 90
    array-length v4, v0

    if-ne v4, v1, :cond_2c

    .line 91
    aget-object v0, v0, v2

    .line 93
    :try_start_3f
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_46} :catch_98

    move-result v0

    .line 94
    if-ltz v0, :cond_2c

    .line 109
    :cond_49
    const-string/jumbo v0, "Connection"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5d

    .line 111
    const-string/jumbo v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v0

    .line 137
    :cond_5d
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 139
    :try_start_63
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->a(Lcz/msebera/android/httpclient/HeaderIterator;)Lcz/msebera/android/httpclient/TokenIterator;

    move-result-object v4

    move v0, v2

    .line 141
    :cond_68
    :goto_68
    invoke-interface {v4}, Lcz/msebera/android/httpclient/TokenIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 142
    invoke-interface {v4}, Lcz/msebera/android/httpclient/TokenIterator;->a()Ljava/lang/String;

    move-result-object v5

    .line 143
    const-string/jumbo v6, "Close"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 145
    const-string/jumbo v6, "Keep-Alive"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_81
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_63 .. :try_end_81} :catch_96

    move-result v5

    if-eqz v5, :cond_68

    move v0, v1

    .line 147
    goto :goto_68

    .line 150
    :cond_86
    if-eqz v0, :cond_8a

    move v2, v1

    .line 152
    goto :goto_2c

    .line 164
    :cond_8a
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->b:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->c(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_94

    :goto_92
    move v2, v1

    goto :goto_2c

    :cond_94
    move v1, v2

    goto :goto_92

    .line 156
    :catch_96
    move-exception v0

    goto :goto_2c

    .line 97
    :catch_98
    move-exception v0

    goto :goto_2c
.end method
