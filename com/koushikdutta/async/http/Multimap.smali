.class public Lcom/koushikdutta/async/http/Multimap;
.super Ljava/util/LinkedHashMap;
.source "Multimap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

.field private static final b:Lcom/koushikdutta/async/http/Multimap$StringDecoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    new-instance v0, Lcom/koushikdutta/async/http/Multimap$1;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/Multimap;->a:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

    .line 101
    new-instance v0, Lcom/koushikdutta/async/http/Multimap$2;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap$2;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/Multimap;->b:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 61
    new-instance v2, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    .line 62
    if-nez p0, :cond_b

    move-object v0, v2

    .line 79
    :goto_a
    return-object v0

    .line 64
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 65
    array-length v6, v5

    move v3, v4

    :goto_11
    if-ge v3, v6, :cond_5a

    aget-object v0, v5, v3

    .line 66
    const-string/jumbo v1, "="

    const/4 v7, 0x2

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 67
    aget-object v0, v7, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 68
    const/4 v0, 0x0

    .line 69
    array-length v8, v7

    if-le v8, v9, :cond_29

    .line 70
    aget-object v0, v7, v9

    .line 71
    :cond_29
    if-eqz p2, :cond_49

    if-eqz v0, :cond_49

    const-string/jumbo v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    const-string/jumbo v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_49
    if-eqz p3, :cond_53

    .line 74
    invoke-interface {p3, v1}, Lcom/koushikdutta/async/http/Multimap$StringDecoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-interface {p3, v0}, Lcom/koushikdutta/async/http/Multimap$StringDecoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_53
    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/async/http/Multimap;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_11

    :cond_5a
    move-object v0, v2

    .line 79
    goto :goto_a
.end method

.method public static b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .registers 4

    .prologue
    .line 83
    const-string/jumbo v0, ";"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/koushikdutta/async/http/Multimap;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;
    .registers 4

    .prologue
    .line 109
    const-string/jumbo v0, "&"

    const/4 v1, 0x0

    sget-object v2, Lcom/koushikdutta/async/http/Multimap;->b:Lcom/koushikdutta/async/http/Multimap$StringDecoder;

    invoke-static {p0, v0, v1, v2}, Lcom/koushikdutta/async/http/Multimap;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/koushikdutta/async/http/Multimap$StringDecoder;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 27
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 28
    :cond_e
    const/4 v0, 0x0

    .line 29
    :goto_f
    return-object v0

    :cond_10
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_f
.end method

.method protected a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 34
    if-nez v0, :cond_f

    .line 35
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Multimap;->a()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_f
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Multimap;->a()Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 121
    :cond_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
