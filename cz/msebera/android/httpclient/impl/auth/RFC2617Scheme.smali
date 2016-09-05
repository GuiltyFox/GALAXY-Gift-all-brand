.class public abstract Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;
.super Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.source "RFC2617Scheme.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    .prologue
    .line 79
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    .line 81
    if-eqz p1, :cond_f

    :goto_c
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->b:Ljava/nio/charset/Charset;

    .line 82
    return-void

    .line 81
    :cond_f
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    goto :goto_c
.end method


# virtual methods
.method a(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 97
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.auth.credential-charset"

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    if-nez v0, :cond_17

    .line 99
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->g()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_17
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 136
    if-nez p1, :cond_4

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3
.end method

.method protected a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .registers 11

    .prologue
    .line 107
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->b:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 108
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->c()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 109
    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->a(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    .line 110
    array-length v0, v1

    if-nez v0, :cond_1b

    .line 111
    new-instance v0, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string/jumbo v1, "Authentication challenge is empty"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    array-length v2, v1

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_3c

    aget-object v3, v1, v0

    .line 115
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 117
    :cond_3c
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    const-string/jumbo v0, "realm"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method protected h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->a:Ljava/util/Map;

    return-object v0
.end method
