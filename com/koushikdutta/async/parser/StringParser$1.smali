.class Lcom/koushikdutta/async/parser/StringParser$1;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "StringParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/StringParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture",
        "<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/parser/StringParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/StringParser;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/parser/StringParser$1;->b:Lcom/koushikdutta/async/parser/StringParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/StringParser$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/parser/StringParser$1;->b:Lcom/koushikdutta/async/parser/StringParser;

    iget-object v0, v0, Lcom/koushikdutta/async/parser/StringParser;->a:Ljava/nio/charset/Charset;

    .line 34
    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/koushikdutta/async/parser/StringParser$1;->a:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 35
    iget-object v0, p0, Lcom/koushikdutta/async/parser/StringParser$1;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 36
    :cond_10
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/parser/StringParser$1;->b(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 30
    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/parser/StringParser$1;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
