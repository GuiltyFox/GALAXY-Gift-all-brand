.class Lcom/koushikdutta/async/BufferedDataSink$1;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/DataSink;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/BufferedDataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/BufferedDataSink;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink$1;->a:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink$1;->a:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-static {v0}, Lcom/koushikdutta/async/BufferedDataSink;->a(Lcom/koushikdutta/async/BufferedDataSink;)V

    .line 28
    return-void
.end method
