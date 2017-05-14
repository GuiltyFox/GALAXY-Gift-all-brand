.class Lcom/koushikdutta/ion/BitmapFetcher$2;
.super Ljava/lang/Object;
.source "BitmapFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/BitmapFetcher;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/Ion;

.field final synthetic b:Lcom/koushikdutta/ion/BitmapFetcher;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/Ion;)V
    .registers 3

    .prologue
    .line 134
    iput-object p1, p0, Lcom/koushikdutta/ion/BitmapFetcher$2;->b:Lcom/koushikdutta/ion/BitmapFetcher;

    iput-object p2, p0, Lcom/koushikdutta/ion/BitmapFetcher$2;->a:Lcom/koushikdutta/ion/Ion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 137
    sget-object v0, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/ion/BitmapFetcher$2$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/BitmapFetcher$2$1;-><init>(Lcom/koushikdutta/ion/BitmapFetcher$2;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method
