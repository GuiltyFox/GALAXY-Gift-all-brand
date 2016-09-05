.class public final Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
.super Ljava/lang/Object;
.source "HttpRoute.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/HttpHost;

.field private final b:Ljava/net/InetAddress;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

.field private final e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

.field private final f:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 9

    .prologue
    .line 152
    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;Z)V
    .registers 12

    .prologue
    .line 171
    const-string/jumbo v0, "Proxy host"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz p4, :cond_1b

    sget-object v5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    :goto_f
    if-eqz p4, :cond_1e

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    :goto_13
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    .line 174
    return-void

    .line 171
    :cond_1b
    sget-object v5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    goto :goto_f

    :cond_1e
    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    goto :goto_13
.end method

.method private constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/HttpHost;",
            ">;Z",
            "Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;",
            "Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string/jumbo v0, "Target host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a:Lcz/msebera/android/httpclient/HttpHost;

    .line 75
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b:Ljava/net/InetAddress;

    .line 76
    if-eqz p3, :cond_36

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    .line 81
    :goto_1c
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne p5, v0, :cond_2b

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_25
    const-string/jumbo v1, "Proxy required if tunnelled"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 84
    :cond_2b
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->f:Z

    .line 85
    if-eqz p5, :cond_3c

    :goto_2f
    iput-object p5, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 86
    if-eqz p6, :cond_3f

    :goto_33
    iput-object p6, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 87
    return-void

    .line 79
    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    goto :goto_1c

    .line 82
    :cond_3a
    const/4 v0, 0x0

    goto :goto_25

    .line 85
    :cond_3c
    sget-object p5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    goto :goto_2f

    .line 86
    :cond_3f
    sget-object p6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    goto :goto_33
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Z)V
    .registers 11

    .prologue
    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;[Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V
    .registers 14

    .prologue
    .line 104
    if-eqz p3, :cond_10

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    .line 106
    return-void

    .line 104
    :cond_10
    const/4 v3, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final a()Lcz/msebera/android/httpclient/HttpHost;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method

.method public final a(I)Lcz/msebera/android/httpclient/HttpHost;
    .registers 5

    .prologue
    .line 205
    const-string/jumbo v0, "Hop index"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c()I

    move-result v1

    .line 207
    if-ge p1, v1, :cond_20

    const/4 v0, 0x1

    :goto_d
    const-string/jumbo v2, "Hop index exceeds tracked route length"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 208
    add-int/lit8 v0, v1, -0x1

    if-ge p1, v0, :cond_22

    .line 209
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 211
    :goto_1f
    return-object v0

    .line 207
    :cond_20
    const/4 v0, 0x0

    goto :goto_d

    .line 211
    :cond_22
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a:Lcz/msebera/android/httpclient/HttpHost;

    goto :goto_1f
.end method

.method public final b()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 325
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcz/msebera/android/httpclient/HttpHost;
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final e()Z
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    if-ne p0, p1, :cond_5

    .line 263
    :cond_4
    :goto_4
    return v0

    .line 252
    :cond_5
    instance-of v2, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    if-eqz v2, :cond_3d

    .line 253
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 254
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->f:Z

    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->f:Z

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v2, v3, :cond_3b

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a:Lcz/msebera/android/httpclient/HttpHost;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a:Lcz/msebera/android/httpclient/HttpHost;

    .line 259
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b:Ljava/net/InetAddress;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b:Ljava/net/InetAddress;

    .line 260
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    .line 261
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3b
    move v0, v1

    goto :goto_4

    :cond_3d
    move v0, v1

    .line 263
    goto :goto_4
.end method

.method public final f()Z
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->f:Z

    return v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 275
    const/16 v0, 0x11

    .line 276
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a:Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 277
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    if-eqz v1, :cond_2b

    .line 279
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 280
    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    move v1, v0

    .line 281
    goto :goto_19

    :cond_2b
    move v1, v0

    .line 283
    :cond_2c
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->f:Z

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/util/LangUtils;->a(IZ)I

    move-result v0

    .line 284
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 285
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 286
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b:Ljava/net/InetAddress;

    if-eqz v0, :cond_1c

    .line 298
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1c
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->d:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v2, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v2, :cond_2c

    .line 303
    const/16 v0, 0x74

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    :cond_2c
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    sget-object v2, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v0, v2, :cond_37

    .line 306
    const/16 v0, 0x6c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    :cond_37
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->f:Z

    if-eqz v0, :cond_40

    .line 309
    const/16 v0, 0x73

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    :cond_40
    const-string/jumbo v0, "}->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    if-eqz v0, :cond_66

    .line 313
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 318
    :cond_66
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
