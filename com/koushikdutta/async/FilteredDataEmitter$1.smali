.class Lcom/koushikdutta/async/FilteredDataEmitter$1;
.super Ljava/lang/Object;
.source "FilteredDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/FilteredDataEmitter;->a(Lcom/koushikdutta/async/DataEmitter;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/FilteredDataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->a:Lcom/koushikdutta/async/FilteredDataEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->a:Lcom/koushikdutta/async/FilteredDataEmitter;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->b(Ljava/lang/Exception;)V

    .line 25
    return-void
.end method
