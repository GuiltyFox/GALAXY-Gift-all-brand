.class Lcom/koushikdutta/async/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ArrayDeque;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/ArrayDeque;)V
    .registers 3

    .prologue
    .line 586
    iput-object p1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-static {v0}, Lcom/koushikdutta/async/ArrayDeque;->a(Lcom/koushikdutta/async/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    .line 596
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-static {v0}, Lcom/koushikdutta/async/ArrayDeque;->b(Lcom/koushikdutta/async/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->c:I

    .line 602
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/ArrayDeque;Lcom/koushikdutta/async/ArrayDeque$1;)V
    .registers 3

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;-><init>(Lcom/koushikdutta/async/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 605
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->c:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 609
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->c:I

    if-ne v0, v1, :cond_c

    .line 610
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 611
    :cond_c
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-static {v0}, Lcom/koushikdutta/async/ArrayDeque;->c(Lcom/koushikdutta/async/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    aget-object v0, v0, v1

    .line 614
    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-static {v1}, Lcom/koushikdutta/async/ArrayDeque;->b(Lcom/koushikdutta/async/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->c:I

    if-ne v1, v2, :cond_22

    if-nez v0, :cond_28

    .line 615
    :cond_22
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 616
    :cond_28
    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->d:I

    .line 617
    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-static {v2}, Lcom/koushikdutta/async/ArrayDeque;->c(Lcom/koushikdutta/async/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    .line 618
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 622
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->d:I

    if-gez v0, :cond_a

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 624
    :cond_a
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    iget v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->d:I

    invoke-static {v0, v1}, Lcom/koushikdutta/async/ArrayDeque;->a(Lcom/koushikdutta/async/ArrayDeque;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 625
    iget v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-static {v1}, Lcom/koushikdutta/async/ArrayDeque;->c(Lcom/koushikdutta/async/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->b:I

    .line 626
    iget-object v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-static {v0}, Lcom/koushikdutta/async/ArrayDeque;->b(Lcom/koushikdutta/async/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->c:I

    .line 628
    :cond_2c
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/ArrayDeque$DeqIterator;->d:I

    .line 629
    return-void
.end method
