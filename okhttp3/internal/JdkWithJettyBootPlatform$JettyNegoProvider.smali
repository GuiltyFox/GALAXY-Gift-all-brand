.class Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;
.super Ljava/lang/Object;
.source "JdkWithJettyBootPlatform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->a:Ljava/util/List;

    .line 114
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;)Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->b:Z

    return v0
.end method

.method static synthetic b(Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 119
    if-nez p3, :cond_f

    .line 120
    sget-object p3, Lokhttp3/internal/Util;->b:[Ljava/lang/String;

    .line 122
    :cond_f
    const-string/jumbo v4, "supports"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v3, :cond_21

    .line 123
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 144
    :goto_20
    return-object v0

    .line 124
    :cond_21
    const-string/jumbo v4, "unsupported"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v3, :cond_32

    .line 125
    iput-boolean v5, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->b:Z

    move-object v0, v1

    .line 126
    goto :goto_20

    .line 127
    :cond_32
    const-string/jumbo v4, "protocols"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    array-length v4, p3

    if-nez v4, :cond_41

    .line 128
    iget-object v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->a:Ljava/util/List;

    goto :goto_20

    .line 129
    :cond_41
    const-string/jumbo v4, "selectProtocol"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    const-string/jumbo v4, "select"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    :cond_53
    const-class v4, Ljava/lang/String;

    if-ne v4, v3, :cond_8e

    array-length v3, p3

    if-ne v3, v5, :cond_8e

    aget-object v3, p3, v2

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_8e

    .line 131
    aget-object v0, p3, v2

    check-cast v0, Ljava/util/List;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_69
    if-ge v1, v3, :cond_83

    .line 134
    iget-object v4, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->c:Ljava/lang/String;

    goto :goto_20

    .line 133
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 138
    :cond_83
    iget-object v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->c:Ljava/lang/String;

    goto :goto_20

    .line 139
    :cond_8e
    const-string/jumbo v3, "protocolSelected"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a0

    const-string/jumbo v3, "selected"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    :cond_a0
    array-length v0, p3

    if-ne v0, v5, :cond_ac

    .line 141
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/JdkWithJettyBootPlatform$JettyNegoProvider;->c:Ljava/lang/String;

    move-object v0, v1

    .line 142
    goto/16 :goto_20

    .line 144
    :cond_ac
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_20
.end method
