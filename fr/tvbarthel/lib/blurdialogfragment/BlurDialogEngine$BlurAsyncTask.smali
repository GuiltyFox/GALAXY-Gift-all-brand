.class Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;
.super Landroid/os/AsyncTask;
.source "BlurDialogEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/view/View;


# direct methods
.method private constructor <init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V
    .registers 2

    .prologue
    .line 496
    iput-object p1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$1;)V
    .registers 3

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;-><init>(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .prologue
    .line 540
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->a(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 545
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 551
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 554
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 555
    invoke-static {v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 556
    invoke-static {v2}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->d(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 554
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->c(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/widget/ImageView;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 560
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    .line 561
    invoke-static {v1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->e(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 562
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 565
    iput-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    .line 566
    iput-object v4, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->b:Landroid/graphics/Bitmap;

    .line 567
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 496
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 496
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 504
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 506
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->a:Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;

    invoke-static {v0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;->b(Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    .line 511
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 512
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 513
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 514
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 515
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 516
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->b:Landroid/graphics/Bitmap;

    .line 522
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_79

    .line 523
    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    .line 524
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 525
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 523
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 527
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    iget-object v1, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    .line 528
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 527
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 529
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 530
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 531
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 532
    iget-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogEngine$BlurAsyncTask;->b:Landroid/graphics/Bitmap;

    .line 534
    :cond_79
    return-void
.end method
