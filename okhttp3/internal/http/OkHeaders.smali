.class public final Lokhttp3/internal/http/OkHeaders;
.super Ljava/lang/Object;
.source "OkHeaders.java"


# static fields
.field static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    invoke-static {}, Lokhttp3/internal/Platform;->c()Lokhttp3/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/Platform;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/OkHeaders;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lokhttp3/internal/http/OkHeaders;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/OkHeaders;->b:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lokhttp3/internal/http/OkHeaders;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/OkHeaders;->c:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lokhttp3/internal/http/OkHeaders;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Selected-Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/OkHeaders;->d:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lokhttp3/internal/http/OkHeaders;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Response-Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/OkHeaders;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lokhttp3/Headers;)J
    .registers 3

    .prologue
    .line 68
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/OkHeaders;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lokhttp3/Request;)J
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/OkHeaders;->a(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lokhttp3/Response;)J
    .registers 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lokhttp3/Response;->f()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/OkHeaders;->a(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 165
    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Keep-Alive"

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Proxy-Authenticate"

    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Proxy-Authorization"

    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "TE"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Trailers"

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Transfer-Encoding"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Upgrade"

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    .line 165
    :goto_49
    return v0

    .line 172
    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private static b(Ljava/lang/String;)J
    .registers 4

    .prologue
    const-wide/16 v0, -0x1

    .line 72
    if-nez p0, :cond_5

    .line 76
    :goto_4
    return-wide v0

    .line 74
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-wide v0

    goto :goto_4

    .line 75
    :catch_a
    move-exception v2

    goto :goto_4
.end method
