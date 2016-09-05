.class public Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;
.super Ljava/lang/Object;
.source "BasicRouteDirector.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v1

    if-le v1, v0, :cond_8

    const/4 v0, 0x2

    :cond_8
    return v0
.end method

.method public a(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 53
    const-string/jumbo v0, "Planned route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    if-eqz p2, :cond_f

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v0

    if-ge v0, v1, :cond_14

    .line 58
    :cond_f
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;->a(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v0

    .line 65
    :goto_13
    return v0

    .line 59
    :cond_14
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v0

    if-le v0, v1, :cond_1f

    .line 60
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;->c(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v0

    goto :goto_13

    .line 62
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;->b(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v0

    goto :goto_13
.end method

.method protected b(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 95
    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 120
    :cond_8
    :goto_8
    return v0

    .line 98
    :cond_9
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 109
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->g()Z

    move-result v1

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->g()Z

    move-result v2

    if-ne v1, v2, :cond_8

    .line 114
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->b()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 115
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->b()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    :cond_35
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected c(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 135
    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_a

    .line 178
    :cond_9
    :goto_9
    return v0

    .line 138
    :cond_a
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->a()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 141
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v3

    .line 142
    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->c()I

    move-result v4

    .line 143
    if-lt v3, v4, :cond_9

    move v2, v1

    .line 147
    :goto_23
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_38

    .line 148
    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->a(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5

    invoke-interface {p2, v2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->a(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 153
    :cond_38
    if-le v3, v4, :cond_3c

    .line 155
    const/4 v0, 0x4

    goto :goto_9

    .line 159
    :cond_3c
    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->e()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->e()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 160
    :cond_48
    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->f()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 164
    :cond_54
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->e()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->e()Z

    move-result v2

    if-nez v2, :cond_62

    .line 165
    const/4 v0, 0x3

    goto :goto_9

    .line 167
    :cond_62
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->f()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->f()Z

    move-result v2

    if-nez v2, :cond_70

    .line 168
    const/4 v0, 0x5

    goto :goto_9

    .line 174
    :cond_70
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->g()Z

    move-result v2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->g()Z

    move-result v3

    if-ne v2, v3, :cond_9

    move v0, v1

    .line 178
    goto :goto_9
.end method
