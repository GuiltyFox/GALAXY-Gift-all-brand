.class Lcom/koushikdutta/ion/Ion$2;
.super Ljava/lang/Object;
.source "Ion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/Ion;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/Ion;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .registers 2

    .prologue
    .line 268
    iput-object p1, p0, Lcom/koushikdutta/ion/Ion$2;->a:Lcom/koushikdutta/ion/Ion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$2;->a:Lcom/koushikdutta/ion/Ion;

    invoke-static {v0}, Lcom/koushikdutta/ion/BitmapFetcher;->a(Lcom/koushikdutta/ion/Ion;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 297
    :cond_9
    return-void

    .line 274
    :cond_a
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion$2;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/HashList;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    iget-object v4, p0, Lcom/koushikdutta/ion/Ion$2;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v4, v4, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    instance-of v4, v0, Lcom/koushikdutta/ion/DeferredLoadBitmap;

    if-eqz v4, :cond_17

    .line 277
    check-cast v0, Lcom/koushikdutta/ion/DeferredLoadBitmap;

    .line 278
    if-nez v1, :cond_38

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    :cond_38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 284
    :cond_3c
    if-eqz v1, :cond_9

    .line 286
    const/4 v0, 0x0

    .line 287
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->i()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/DeferredLoadBitmap;

    .line 289
    iget-object v4, p0, Lcom/koushikdutta/ion/Ion$2;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v4, v4, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v5, v0, Lcom/koushikdutta/ion/DeferredLoadBitmap;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    iget-object v4, p0, Lcom/koushikdutta/ion/Ion$2;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v4, v4, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v5, v0, Lcom/koushikdutta/ion/DeferredLoadBitmap;->e:Lcom/koushikdutta/ion/BitmapFetcher;

    iget-object v5, v5, Lcom/koushikdutta/ion/BitmapFetcher;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    iget-object v0, v0, Lcom/koushikdutta/ion/DeferredLoadBitmap;->e:Lcom/koushikdutta/ion/BitmapFetcher;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/BitmapFetcher;->a()V

    .line 292
    add-int/lit8 v0, v1, 0x1

    .line 294
    const/4 v1, 0x5

    if-gt v0, v1, :cond_9

    move v1, v0

    .line 295
    goto :goto_4b
.end method
