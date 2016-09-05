.class public Lcom/bzbs/lib/http/okhttp/HttpParams;
.super Ljava/lang/Object;
.source "HttpParams.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpParams;->a:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;
    .registers 6

    .prologue
    .line 16
    if-eqz p2, :cond_11

    .line 17
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpParams;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_10
    return-object p0

    .line 19
    :cond_11
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpParams;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;

    const-string/jumbo v2, ""

    invoke-direct {v1, p1, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/http/okhttp/HttpParams$PartValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpParams;->a:Ljava/util/ArrayList;

    return-object v0
.end method
