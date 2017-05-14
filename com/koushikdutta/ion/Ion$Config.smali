.class public Lcom/koushikdutta/ion/Ion$Config;
.super Ljava/lang/Object;
.source "Ion.java"


# instance fields
.field a:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

.field final synthetic b:Lcom/koushikdutta/ion/Ion;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .registers 3

    .prologue
    .line 458
    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$Config;->b:Lcom/koushikdutta/ion/Ion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Lcom/koushikdutta/ion/Ion$Config$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/Ion$Config$1;-><init>(Lcom/koushikdutta/ion/Ion$Config;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->a:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;
    .registers 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    return-object p0
.end method

.method public a()Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->a:Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/ion/Loader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$Config;->b:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->u:Ljava/util/ArrayList;

    return-object v0
.end method
