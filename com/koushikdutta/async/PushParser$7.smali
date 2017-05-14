.class Lcom/koushikdutta/async/PushParser$7;
.super Ljava/lang/Object;
.source "PushParser.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback",
        "<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/PushParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/PushParser;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$7;->a:Lcom/koushikdutta/async/PushParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser$7;->a:Lcom/koushikdutta/async/PushParser;

    invoke-static {v0}, Lcom/koushikdutta/async/PushParser;->a(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 226
    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/PushParser$7;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
