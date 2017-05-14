.class Lcom/koushikdutta/async/parser/JSONObjectParser$1;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "JSONObjectParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/JSONObjectParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/parser/JSONObjectParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/JSONObjectParser;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/parser/JSONObjectParser$1;->a:Lcom/koushikdutta/async/parser/JSONObjectParser;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/parser/JSONObjectParser$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/parser/JSONObjectParser$1;->b(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method
