.class public final Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lcz/msebera/android/httpclient/HttpHost;

.field private final b:Ljava/net/InetAddress;

.field private c:Z

.field private d:[Lcz/msebera/android/httpclient/HttpHost;

.field private e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

.field private f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

.field private g:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;)V
    .registers 4

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string/jumbo v0, "Target host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a:Lcz/msebera/android/httpclient/HttpHost;

    .line 84
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b:Ljava/net/InetAddress;

    .line 85
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 86
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 4

    .prologue
    .line 108
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;)V

    .line 109
    return-void
.end method


# virtual methods
.method public final a()Lcz/msebera/android/httpclient/HttpHost;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method

.method public final a(I)Lcz/msebera/android/httpclient/HttpHost;
    .registers 5

    .prologue
    .line 209
    const-string/jumbo v0, "Hop index"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->b(ILjava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c()I

    move-result v1

    .line 211
    if-ge p1, v1, :cond_1c

    const/4 v0, 0x1

    :goto_d
    const-string/jumbo v2, "Hop index exceeds tracked route length"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Args;->a(ZLjava/lang/String;)V

    .line 213
    add-int/lit8 v0, v1, -0x1

    if-ge p1, v0, :cond_1e

    .line 214
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    aget-object v0, v0, p1

    .line 219
    :goto_1b
    return-object v0

    .line 211
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d

    .line 216
    :cond_1e
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a:Lcz/msebera/android/httpclient/HttpHost;

    goto :goto_1b
.end method

.method public final a(Lcz/msebera/android/httpclient/HttpHost;Z)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    const-string/jumbo v0, "Proxy host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    if-nez v0, :cond_1e

    move v0, v1

    :goto_d
    const-string/jumbo v3, "Already connected"

    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 133
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    .line 134
    new-array v0, v1, [Lcz/msebera/android/httpclient/HttpHost;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    .line 135
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    .line 136
    return-void

    :cond_1e
    move v0, v2

    .line 132
    goto :goto_d
.end method

.method public final a(Z)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    if-nez v0, :cond_11

    move v0, v1

    :goto_6
    const-string/jumbo v2, "Already connected"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 119
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    .line 120
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    .line 121
    return-void

    .line 118
    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final b()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final b(Lcz/msebera/android/httpclient/HttpHost;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 161
    const-string/jumbo v0, "Proxy host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    const-string/jumbo v1, "No tunnel unless connected"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    const-string/jumbo v1, "No tunnel without proxy"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcz/msebera/android/httpclient/HttpHost;

    .line 166
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 170
    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    .line 171
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    .line 172
    return-void
.end method

.method public final b(Z)V
    .registers 4

    .prologue
    .line 145
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    const-string/jumbo v1, "No tunnel unless connected"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    const-string/jumbo v1, "No tunnel without proxy"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 148
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    .line 149
    return-void
.end method

.method public final c()I
    .registers 3

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    if-eqz v1, :cond_a

    .line 199
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    if-nez v0, :cond_b

    .line 200
    const/4 v0, 0x1

    .line 205
    :cond_a
    :goto_a
    return v0

    .line 202
    :cond_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public final c(Z)V
    .registers 4

    .prologue
    .line 183
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    const-string/jumbo v1, "No layered protocol unless connected"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 184
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 185
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    .line 186
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 363
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcz/msebera/android/httpclient/HttpHost;
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_5
.end method

.method public final e()Z
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

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

    .line 275
    if-ne p1, p0, :cond_5

    .line 291
    :cond_4
    :goto_4
    return v0

    .line 278
    :cond_5
    instance-of v2, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-nez v2, :cond_b

    move v0, v1

    .line 279
    goto :goto_4

    .line 282
    :cond_b
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 283
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    if-ne v2, v3, :cond_43

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a:Lcz/msebera/android/httpclient/HttpHost;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a:Lcz/msebera/android/httpclient/HttpHost;

    .line 289
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b:Ljava/net/InetAddress;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b:Ljava/net/InetAddress;

    .line 290
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    .line 291
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_43
    move v0, v1

    goto :goto_4
.end method

.method public final f()Z
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

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
    .line 247
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    return v0
.end method

.method public h()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    .line 95
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 96
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->a:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 97
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    .line 98
    return-void
.end method

.method public final hashCode()I
    .registers 6

    .prologue
    .line 304
    const/16 v0, 0x11

    .line 305
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a:Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 306
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 307
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v1, :cond_23

    .line 308
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v4, :cond_23

    aget-object v2, v3, v1

    .line 309
    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v2

    .line 308
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_16

    .line 312
    :cond_23
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(IZ)I

    move-result v0

    .line 313
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(IZ)I

    move-result v0

    .line 314
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->a(ILjava/lang/Object;)I

    move-result v0

    .line 316
    return v0
.end method

.method public final i()Z
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    return v0
.end method

.method public final j()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 8

    .prologue
    .line 259
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a:Lcz/msebera/android/httpclient/HttpHost;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b:Ljava/net/InetAddress;

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    iget-boolean v4, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;[Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 328
    const-string/jumbo v0, "RouteTracker["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b:Ljava/net/InetAddress;

    if-eqz v0, :cond_22

    .line 330
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->b:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_22
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->c:Z

    if-eqz v0, :cond_30

    .line 335
    const/16 v0, 0x63

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    :cond_30
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->e:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v2, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v2, :cond_3b

    .line 338
    const/16 v0, 0x74

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_3b
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->f:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    sget-object v2, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->b:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v0, v2, :cond_46

    .line 341
    const/16 v0, 0x6c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_46
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->g:Z

    if-eqz v0, :cond_4f

    .line 344
    const/16 v0, 0x73

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    :cond_4f
    const-string/jumbo v0, "}->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v0, :cond_6d

    .line 348
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->d:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_5d
    if-ge v0, v3, :cond_6d

    aget-object v4, v2, v0

    .line 349
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    const-string/jumbo v4, "->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 353
    :cond_6d
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->a:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
