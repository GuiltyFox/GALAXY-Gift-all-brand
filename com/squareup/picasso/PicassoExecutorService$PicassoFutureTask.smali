.class final Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "PicassoExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/squareup/picasso/BitmapHunter;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/BitmapHunter;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/BitmapHunter;)V
    .registers 3

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;->a:Lcom/squareup/picasso/BitmapHunter;

    .line 99
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;)I
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;->a:Lcom/squareup/picasso/BitmapHunter;

    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->n()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 104
    iget-object v1, p1, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;->a:Lcom/squareup/picasso/BitmapHunter;

    invoke-virtual {v1}, Lcom/squareup/picasso/BitmapHunter;->n()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    .line 108
    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;->a:Lcom/squareup/picasso/BitmapHunter;

    iget v0, v0, Lcom/squareup/picasso/BitmapHunter;->a:I

    iget-object v1, p1, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;->a:Lcom/squareup/picasso/BitmapHunter;

    iget v1, v1, Lcom/squareup/picasso/BitmapHunter;->a:I

    sub-int/2addr v0, v1

    :goto_17
    return v0

    :cond_18
    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_17
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 92
    check-cast p1, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;->a(Lcom/squareup/picasso/PicassoExecutorService$PicassoFutureTask;)I

    move-result v0

    return v0
.end method
