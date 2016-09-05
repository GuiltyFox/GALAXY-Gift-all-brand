.class public Lcz/msebera/android/httpclient/impl/auth/BasicScheme;
.super Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;
.source "BasicScheme.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;->a:Z

    .line 67
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;->a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .registers 8

    .prologue
    .line 158
    const-string/jumbo v0, "Credentials"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/Credentials;->a()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/Credentials;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_63

    const-string/jumbo v0, "null"

    :goto_2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;->a(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 165
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/extras/Base64;->b([BI)[B

    move-result-object v0

    .line 168
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 169
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;->e()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 170
    const-string/jumbo v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 174
    :goto_52
    const-string/jumbo v2, ": Basic "

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a([BII)V

    .line 177
    new-instance v0, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v0

    .line 163
    :cond_63
    invoke-interface {p1}, Lcz/msebera/android/httpclient/auth/Credentials;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 172
    :cond_68
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_52
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string/jumbo v0, "basic"

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/Header;)V
    .registers 3

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->a(Lcz/msebera/android/httpclient/Header;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;->a:Z

    .line 109
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;->a:Z

    return v0
.end method
