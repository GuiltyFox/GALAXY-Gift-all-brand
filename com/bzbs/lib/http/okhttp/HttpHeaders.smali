.class public Lcom/bzbs/lib/http/okhttp/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;",
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

    iput-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpHeaders;->a:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpHeaders;
    .registers 5

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpHeaders;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;

    invoke-direct {v1, p1, p2}, Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-object p0
.end method

.method public a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/http/okhttp/HttpHeaders$HeaderValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bzbs/lib/http/okhttp/HttpHeaders;->a:Ljava/util/ArrayList;

    return-object v0
.end method
