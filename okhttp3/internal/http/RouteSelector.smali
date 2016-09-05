.class public final Lokhttp3/internal/http/RouteSelector;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final a:Lokhttp3/Address;

.field private final b:Lokhttp3/internal/RouteDatabase;

.field private c:Ljava/net/Proxy;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/Address;Lokhttp3/internal/RouteDatabase;)V
    .registers 5

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/RouteSelector;->g:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http/RouteSelector;->i:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    .line 58
    iput-object p2, p0, Lokhttp3/internal/http/RouteSelector;->b:Lokhttp3/internal/RouteDatabase;

    .line 60
    invoke-virtual {p1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Address;->h()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/http/RouteSelector;->a(Lokhttp3/HttpUrl;Ljava/net/Proxy;)V

    .line 61
    return-void
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 190
    if-nez v0, :cond_b

    .line 194
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Ljava/net/Proxy;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http/RouteSelector;->g:Ljava/util/List;

    .line 150
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_62

    .line 151
    :cond_18
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()I

    move-result v0

    move v3, v0

    move-object v0, v1

    .line 164
    :goto_2e
    const/4 v1, 0x1

    if-lt v3, v1, :cond_36

    const v1, 0xffff

    if-le v3, v1, :cond_95

    .line 165
    :cond_36
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No route to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; port is out of range"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_62
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 155
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_88

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_88
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 160
    invoke-static {v0}, Lokhttp3/internal/http/RouteSelector;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v3, v0

    move-object v0, v1

    goto :goto_2e

    .line 169
    :cond_95
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v4, :cond_a9

    .line 170
    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->g:Ljava/util/List;

    invoke-static {v0, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_a6
    iput v2, p0, Lokhttp3/internal/http/RouteSelector;->h:I

    .line 181
    return-void

    .line 173
    :cond_a9
    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->b()Lokhttp3/Dns;

    move-result-object v1

    invoke-interface {v1, v0}, Lokhttp3/Dns;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 174
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_b8
    if-ge v1, v5, :cond_a6

    .line 175
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 176
    iget-object v6, p0, Lokhttp3/internal/http/RouteSelector;->g:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b8
.end method

.method private a(Lokhttp3/HttpUrl;Ljava/net/Proxy;)V
    .registers 5

    .prologue
    .line 111
    if-eqz p2, :cond_c

    .line 113
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    .line 124
    :goto_8
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http/RouteSelector;->f:I

    .line 125
    return-void

    .line 117
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    .line 118
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->g()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_28

    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_28
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 122
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lokhttp3/internal/http/RouteSelector;->f:I

    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private d()Ljava/net/Proxy;
    .registers 4

    .prologue
    .line 134
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->c()Z

    move-result v0

    if-nez v0, :cond_37

    .line 135
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_37
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->e:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/http/RouteSelector;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/http/RouteSelector;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 139
    invoke-direct {p0, v0}, Lokhttp3/internal/http/RouteSelector;->a(Ljava/net/Proxy;)V

    .line 140
    return-object v0
.end method

.method private e()Z
    .registers 3

    .prologue
    .line 203
    iget v0, p0, Lokhttp3/internal/http/RouteSelector;->h:I

    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private f()Ljava/net/InetSocketAddress;
    .registers 4

    .prologue
    .line 208
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->e()Z

    move-result v0

    if-nez v0, :cond_37

    .line 209
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    invoke-virtual {v2}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/RouteSelector;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_37
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->g:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/http/RouteSelector;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/http/RouteSelector;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private h()Lokhttp3/Route;
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Route;

    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/Route;Ljava/io/IOException;)V
    .registers 6

    .prologue
    .line 100
    invoke-virtual {p1}, Lokhttp3/Route;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->g()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 102
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    invoke-virtual {v0}, Lokhttp3/Address;->g()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    .line 103
    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->a()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Route;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 106
    :cond_2f
    iget-object v0, p0, Lokhttp3/internal/http/RouteSelector;->b:Lokhttp3/internal/RouteDatabase;

    invoke-virtual {v0, p1}, Lokhttp3/internal/RouteDatabase;->a(Lokhttp3/Route;)V

    .line 107
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->e()Z

    move-result v0

    if-nez v0, :cond_12

    .line 68
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->c()Z

    move-result v0

    if-nez v0, :cond_12

    .line 69
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    .line 67
    :goto_13
    return v0

    .line 69
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b()Lokhttp3/Route;
    .registers 5

    .prologue
    .line 74
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->e()Z

    move-result v0

    if-nez v0, :cond_23

    .line 75
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 76
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->g()Z

    move-result v0

    if-nez v0, :cond_18

    .line 77
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 79
    :cond_18
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->h()Lokhttp3/Route;

    move-result-object v0

    .line 92
    :cond_1c
    :goto_1c
    return-object v0

    .line 81
    :cond_1d
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->d()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/RouteSelector;->c:Ljava/net/Proxy;

    .line 83
    :cond_23
    invoke-direct {p0}, Lokhttp3/internal/http/RouteSelector;->f()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http/RouteSelector;->d:Ljava/net/InetSocketAddress;

    .line 85
    new-instance v0, Lokhttp3/Route;

    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->a:Lokhttp3/Address;

    iget-object v2, p0, Lokhttp3/internal/http/RouteSelector;->c:Ljava/net/Proxy;

    iget-object v3, p0, Lokhttp3/internal/http/RouteSelector;->d:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Route;-><init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 86
    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->b:Lokhttp3/internal/RouteDatabase;

    invoke-virtual {v1, v0}, Lokhttp3/internal/RouteDatabase;->c(Lokhttp3/Route;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 87
    iget-object v1, p0, Lokhttp3/internal/http/RouteSelector;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lokhttp3/internal/http/RouteSelector;->b()Lokhttp3/Route;

    move-result-object v0

    goto :goto_1c
.end method
