.class public Lokhttp3/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final a:Lokhttp3/internal/Platform;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Lokhttp3/internal/Platform;->b()Lokhttp3/internal/Platform;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Platform;->a:Lokhttp3/internal/Platform;

    .line 73
    const-class v0, Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/Platform;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_5
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_31

    .line 185
    :try_start_9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_1d

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1d
    move-object v0, v1

    .line 202
    :goto_1e
    return-object v0

    .line 189
    :cond_1f
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_22} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_1e

    .line 191
    :catch_24
    move-exception v0

    .line 192
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 190
    :catch_2b
    move-exception v2

    .line 183
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 197
    :cond_31
    const-string/jumbo v0, "delegate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 198
    const-class v0, Ljava/lang/Object;

    const-string/jumbo v2, "delegate"

    invoke-static {p0, v0, v2}, Lokhttp3/internal/Platform;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_4a

    invoke-static {v0, p1, p2}, Lokhttp3/internal/Platform;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e

    :cond_4a
    move-object v0, v1

    .line 202
    goto :goto_1e
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_27

    .line 136
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Protocol;

    .line 137
    sget-object v4, Lokhttp3/Protocol;->a:Lokhttp3/Protocol;

    if-ne v0, v4, :cond_1f

    .line 135
    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 138
    :cond_1f
    invoke-virtual {v0}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 140
    :cond_27
    return-object v2
.end method

.method private static b()Lokhttp3/internal/Platform;
    .registers 1

    .prologue
    .line 145
    invoke-static {}, Lokhttp3/internal/AndroidPlatform;->b()Lokhttp3/internal/Platform;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_7

    .line 164
    :cond_6
    :goto_6
    return-object v0

    .line 151
    :cond_7
    invoke-static {}, Lokhttp3/internal/Jdk9Platform;->b()Lokhttp3/internal/Jdk9Platform;

    move-result-object v0

    .line 153
    if-nez v0, :cond_6

    .line 157
    invoke-static {}, Lokhttp3/internal/JdkWithJettyBootPlatform;->b()Lokhttp3/internal/Platform;

    move-result-object v0

    .line 159
    if-nez v0, :cond_6

    .line 164
    new-instance v0, Lokhttp3/internal/Platform;

    invoke-direct {v0}, Lokhttp3/internal/Platform;-><init>()V

    goto :goto_6
.end method

.method static b(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 173
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_2e

    .line 174
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Protocol;

    .line 175
    sget-object v4, Lokhttp3/Protocol;->a:Lokhttp3/Protocol;

    if-ne v0, v4, :cond_1b

    .line 173
    :goto_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 176
    :cond_1b
    invoke-virtual {v0}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 177
    invoke-virtual {v0}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_17

    .line 179
    :cond_2e
    invoke-virtual {v2}, Lokio/Buffer;->r()[B

    move-result-object v0

    return-object v0
.end method

.method public static c()Lokhttp3/internal/Platform;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lokhttp3/internal/Platform;->a:Lokhttp3/internal/Platform;

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 89
    :try_start_1
    const-string/jumbo v0, "sun.security.ssl.SSLContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    const-string/jumbo v2, "context"

    invoke-static {p1, v0, v2}, Lokhttp3/internal/Platform;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    if-nez v0, :cond_13

    move-object v0, v1

    .line 94
    :goto_12
    return-object v0

    .line 92
    :cond_13
    const-class v2, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v3, "trustManager"

    invoke-static {v0, v2, v3}, Lokhttp3/internal/Platform;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_12

    .line 93
    :catch_1f
    move-exception v0

    move-object v0, v1

    .line 94
    goto :goto_12
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 125
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 126
    :goto_5
    sget-object v1, Lokhttp3/internal/Platform;->b:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    return-void

    .line 125
    :cond_b
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_5
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4

    .prologue
    .line 121
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 122
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    .prologue
    .line 112
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string/jumbo v0, "OkHttp"

    return-object v0
.end method
