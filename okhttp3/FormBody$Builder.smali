.class public final Lokhttp3/FormBody$Builder;
.super Ljava/lang/Object;
.source "FormBody.java"


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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/FormBody$Builder;->a:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/FormBody$Builder;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v6, p0, Lokhttp3/FormBody$Builder;->a:Ljava/util/List;

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v6, p0, Lokhttp3/FormBody$Builder;->b:Ljava/util/List;

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public a()Lokhttp3/FormBody;
    .registers 5

    .prologue
    .line 121
    new-instance v0, Lokhttp3/FormBody;

    iget-object v1, p0, Lokhttp3/FormBody$Builder;->a:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/FormBody$Builder;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;Lokhttp3/FormBody$1;)V

    return-object v0
.end method
