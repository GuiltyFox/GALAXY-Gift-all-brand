.class public Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionKeepAliveStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;


# static fields
.field public static final a:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->a:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J
    .registers 7

    .prologue
    .line 54
    const-string/jumbo v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;

    const-string/jumbo v1, "Keep-Alive"

    .line 56
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->headerIterator(Ljava/lang/String;)Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHeaderElementIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    .line 57
    :cond_12
    :goto_12
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElementIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 58
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElementIterator;->a()Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->b()Ljava/lang/String;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_12

    const-string/jumbo v3, "timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 63
    :try_start_2f
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_32} :catch_3a

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 68
    :goto_36
    return-wide v0

    :cond_37
    const-wide/16 v0, -0x1

    goto :goto_36

    .line 64
    :catch_3a
    move-exception v1

    goto :goto_12
.end method
