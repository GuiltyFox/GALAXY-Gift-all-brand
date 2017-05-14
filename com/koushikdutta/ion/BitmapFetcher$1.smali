.class Lcom/koushikdutta/ion/BitmapFetcher$1;
.super Ljava/lang/Object;
.source "BitmapFetcher.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapFetcher;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/BitmapCallback;

.field final synthetic b:Lcom/koushikdutta/ion/BitmapFetcher;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/BitmapCallback;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapFetcher$1;->b:Lcom/koushikdutta/ion/BitmapFetcher;

    iput-object p2, p0, Lcom/koushikdutta/ion/BitmapFetcher$1;->a:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher$1;->a:Lcom/koushikdutta/ion/BitmapCallback;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/ion/BitmapCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    .line 66
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 62
    check-cast p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/BitmapFetcher$1;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method
