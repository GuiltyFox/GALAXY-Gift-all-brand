.class public final Lokhttp3/FormBody;
.super Lokhttp3/RequestBody;
.source "FormBody.java"


# static fields
.field private static final a:Lokhttp3/MediaType;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    .line 30
    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/FormBody;->a:Lokhttp3/MediaType;

    .line 29
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 36
    invoke-static {p1}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/FormBody;->b:Ljava/util/List;

    .line 37
    invoke-static {p2}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/FormBody;->c:Ljava/util/List;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lokhttp3/FormBody$1;)V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lokhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Lokio/BufferedSink;Z)J
    .registers 9

    .prologue
    .line 80
    const-wide/16 v2, 0x0

    .line 83
    if-eqz p2, :cond_3a

    .line 84
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    move-object v1, v0

    .line 89
    :goto_a
    const/4 v0, 0x0

    iget-object v4, p0, Lokhttp3/FormBody;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_12
    if-ge v4, v5, :cond_40

    .line 90
    if-lez v4, :cond_1b

    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 91
    :cond_1b
    iget-object v0, p0, Lokhttp3/FormBody;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    .line 92
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 93
    iget-object v0, p0, Lokhttp3/FormBody;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    .line 89
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_12

    .line 86
    :cond_3a
    invoke-interface {p1}, Lokio/BufferedSink;->c()Lokio/Buffer;

    move-result-object v0

    move-object v1, v0

    goto :goto_a

    .line 96
    :cond_40
    if-eqz p2, :cond_49

    .line 97
    invoke-virtual {v1}, Lokio/Buffer;->b()J

    move-result-wide v2

    .line 98
    invoke-virtual {v1}, Lokio/Buffer;->s()V

    :cond_49
    move-wide v0, v2

    .line 101
    return-wide v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/FormBody;->a(Lokio/BufferedSink;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lokio/BufferedSink;)V
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/FormBody;->a(Lokio/BufferedSink;Z)J

    .line 71
    return-void
.end method

.method public b()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lokhttp3/FormBody;->a:Lokhttp3/MediaType;

    return-object v0
.end method
