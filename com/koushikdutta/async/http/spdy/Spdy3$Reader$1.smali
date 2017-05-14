.class Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$1;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;-><init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 138
    return-void
.end method
