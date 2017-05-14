.class Lcom/koushikdutta/async/PushParser$2;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/PushParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/PushParser;I)V
    .registers 3

    .prologue
    .line 187
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$2;->a:Lcom/koushikdutta/async/PushParser;

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .registers 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser$2;->a:Lcom/koushikdutta/async/PushParser;

    invoke-static {v0}, Lcom/koushikdutta/async/PushParser;->a(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method
