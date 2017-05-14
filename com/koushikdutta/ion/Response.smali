.class public Lcom/koushikdutta/ion/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/koushikdutta/ion/ResponseServedFrom;

.field private b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Exception;

.field private e:Lcom/koushikdutta/ion/HeadersResponse;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/ResponseServedFrom;",
            "Lcom/koushikdutta/ion/HeadersResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/koushikdutta/ion/Response;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 11
    iput-object p2, p0, Lcom/koushikdutta/ion/Response;->a:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 12
    iput-object p3, p0, Lcom/koushikdutta/ion/Response;->e:Lcom/koushikdutta/ion/HeadersResponse;

    .line 13
    iput-object p4, p0, Lcom/koushikdutta/ion/Response;->d:Ljava/lang/Exception;

    .line 14
    iput-object p5, p0, Lcom/koushikdutta/ion/Response;->c:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/koushikdutta/ion/ResponseServedFrom;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/koushikdutta/ion/Response;->a:Lcom/koushikdutta/ion/ResponseServedFrom;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/koushikdutta/ion/Response;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/koushikdutta/ion/Response;->d:Ljava/lang/Exception;

    return-object v0
.end method
