.class Lcom/squareup/picasso/DeferredRequestCreator;
.super Ljava/lang/Object;
.source "DeferredRequestCreator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final a:Lcom/squareup/picasso/RequestCreator;

.field final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/squareup/picasso/Callback;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/RequestCreator;Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/squareup/picasso/DeferredRequestCreator;->a:Lcom/squareup/picasso/RequestCreator;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->b:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p3, p0, Lcom/squareup/picasso/DeferredRequestCreator;->c:Lcom/squareup/picasso/Callback;

    .line 37
    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->c:Lcom/squareup/picasso/Callback;

    .line 65
    iget-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 66
    if-nez v0, :cond_e

    .line 74
    :cond_d
    :goto_d
    return-void

    .line 69
    :cond_e
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 73
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_d
.end method

.method public onPreDraw()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 41
    iget-object v0, p0, Lcom/squareup/picasso/DeferredRequestCreator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    if-nez v0, :cond_c

    .line 60
    :cond_b
    :goto_b
    return v4

    .line 45
    :cond_c
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 50
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 51
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 53
    if-lez v2, :cond_b

    if-lez v3, :cond_b

    .line 57
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 59
    iget-object v1, p0, Lcom/squareup/picasso/DeferredRequestCreator;->a:Lcom/squareup/picasso/RequestCreator;

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->a()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->a(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/DeferredRequestCreator;->c:Lcom/squareup/picasso/Callback;

    invoke-virtual {v1, v0, v2}, Lcom/squareup/picasso/RequestCreator;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_b
.end method
