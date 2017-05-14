.class Lcom/koushikdutta/ion/BitmapFetcher$2$1;
.super Ljava/lang/Object;
.source "BitmapFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapFetcher$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/BitmapFetcher$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/BitmapFetcher$2;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapFetcher$2$1;->a:Lcom/koushikdutta/ion/BitmapFetcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher$2$1;->a:Lcom/koushikdutta/ion/BitmapFetcher$2;

    iget-object v0, v0, Lcom/koushikdutta/ion/BitmapFetcher$2;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher$2$1;->a:Lcom/koushikdutta/ion/BitmapFetcher$2;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapFetcher$2;->b:Lcom/koushikdutta/ion/BitmapFetcher;

    iget-object v1, v1, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 141
    return-void
.end method
